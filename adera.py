import os
from fetch_pdfs import get_pdfs
from metapub import PubMedFetcher
from nltk import sent_tokenize, data,download
from gc import collect 
import tika
tika.initVM()
from tika import parser
import json 
import io
try:
    to_unicode = unicode
except NameError:
    to_unicode = str
from pandas import DataFrame, options
import numpy as np
from tensorflow_hub import load as loadmodel
from keras import models
from tensorflow.python.ops.numpy_ops import np_config
from shutil import rmtree
import sys

# this function changes the paths of the 
# files if necessary (like if it is being run)
# by pyinstaller
def construct_file_path(original_path):
    try:
        wd = sys._MEIPASS
    except AttributeError:
        wd = os.getcwd()
    
    path = os.path.join(wd,original_path)
    return path

# see if the download directory exists
# if it does not exist create it
def check_download_directory():
    global download_dir 
    download_dir = "fetched_pdfs"
    isExist = os.path.exists(download_dir)
    if not isExist:
        os.makedirs(download_dir)
        print("Created directory for downloaded PDFs.")

# remove unnecessary directories created by 
# fetch_pdfs
def remove_unnecessary_directories():
    try:
        os.rmdir('default')
    except:
        print("No unnecessary directories to remove.")

# just a shortcut function for 
# garbage collection
def take_out_trash():
    collect()

# download pdfs
def download_pdfs(query,count):
    fetch=PubMedFetcher()
    article_pmids=fetch.pmids_for_query(query, pmc_only= True,retmax=5)
    get_pdfs(article_pmids[:count]) # count is user defined
    remove_unnecessary_directories()
    take_out_trash()

def initialize():
    # initialization function
    # removes leftover files from the previous run
    # to prevent conflicts
    try:
        rmtree('fetched_pdfs', ignore_errors=True)
    except:
        pass
    try:
        os.remove('sentences.txt')
    except:
        pass
    try:
        os.remove('final_results.txt')
    except:
        pass
    try:
        os.remove('data.json')
    except:
        pass
    np_config.enable_numpy_behavior()
    check_download_directory()
    download('punkt')

def check_for_pdfs(pdf_count):
    if pdf_count < 2:
        return "NO"
    

# cleans up the tokens
# gets rid of references 
def clean_tokens(tokenized_data):
    clean_data = []
    for token in tokenized_data:
        if 'References 1' in token:
            break
        else:
            clean_data.append(token)
    return clean_data

# create database
def create_database():
    data = []
    i = 1
    global pdf_count
    pdf_count=0
    for file in os.listdir(download_dir):
        # for everyfile in fetched_pdfs, if the file extension is .pdf
        # parse the pdf file, tokenize it, clean up the tokens 
        if not file.endswith(".pdf"):
            continue
        pdf_file = os.path.join(download_dir, file)
        try:
            raw_data = parser.from_file(pdf_file)
        except:
            raw_data = parser.from_file(pdf_file)
        pdf_content = raw_data['content']
        pdf_content = pdf_content.replace('\n\n', '').replace('\n', ' ')
        tokenized_data = sent_tokenize(pdf_content)
        if len(tokenized_data) < 100:
            pass
        else:
            tokenized_data = clean_tokens(tokenized_data)
            print('PDF tokenized.')
            pdf = {'threasa':1,
            'name':file,
            'data':tokenized_data}
            data.append(pdf)
            i = i+1
            pdf_count=pdf_count+1

    # write tokens to a json file
    write_to_json(data)
    print('Database created successfully.')

def write_to_json(data):
    global json_data 
    json_data = 'data.json'
    with io.open(json_data, 'w', encoding='utf8') as out_file:
        str_ = json.dumps(data,
                          indent=4, sort_keys=True,
                          separators=(',', ': '), ensure_ascii=False)
        out_file.write(to_unicode(str_))


def mse(imageA, imageB):
	# the 'Mean Squared Error' between the two images is the
	# sum of the squared difference between the two images;
	# NOTE: the two images must have the same dimension
	err = np.sum((imageA.astype("float") - imageB.astype("float")) ** 2)
	err /= float(imageA.shape[0] * imageA.shape[1])
	
	# return the MSE, the lower the error, the more "similar"
	# the two images are
	return err

# merges two lists
def merge(list1, list2): 
    merged_list = [(list1[i], list2[i]) for i in range(0, len(list1))] 
    return merged_list

def analyze(query):
    model_path = construct_file_path("Adera_Maacrious_number_ps3_5_August_model")
    analysis_model = models.load_model(model_path)
    with open(json_data,'r', encoding='utf8') as f:    
          datastore = json.load(f)

    module_url = "https://tfhub.dev/google/universal-sentence-encoder/4" #@param ["https://tfhub.dev/google/universal-sentence-encoder/4", "https://tfhub.dev/google/universal-sentence-encoder-large/5"]
    global model
    model = loadmodel(module_url)

    print ("module %s loaded" % module_url)

    global results_file
    results_file = 'sentences.txt'

    for i in range(0,pdf_count): #make this eleven 
        for n in range(i,i+1):
            paragraph=datastore[n]['data']
            paragraph.insert(0,query)
            messages=paragraph
            message_embeddings = model(messages)
        z0_adera=message_embeddings[0].reshape(1,1,512,1)
        z0a_adera=analysis_model.predict(z0_adera,batch_size=1)
        z0a_adera.shape
        results = []
        for n in range(0,len(message_embeddings-1)):
            z_adera=message_embeddings[n].reshape(1, 1, 512,1)
            m1 = mse(z0a_adera, z_adera)
            results.append(m1)
        c2=merge(results,datastore[i]['data'])
        c2.sort(reverse=False)
        options.display.max_colwidth = 200
        dfObj = DataFrame(c2)
        with open(results_file,"a", encoding='utf8') as text_file:
            text_file.write(str(dfObj[1][0:10]))

    print("Sentences extracted. Moving on to last phase.")

def extract_drug_names():

    model_path = construct_file_path("ader0_284b__model_mkrH9_extrcat_words_model")
    grace_todel_model = models.load_model(model_path)

    with open('sentences.txt', 'r', encoding="utf8",errors='replace') as f:  #this line open the input file
        data_adera = f.readlines()   

    df_adera2 = DataFrame(data_adera, columns=['points'])              #this line build datframe out of the input file
    locate_results_adera=np.full((len(df_adera2), 100), 90.008)

    for kk in range(0,len(df_adera2)):
        res=df_adera2['points'][kk].split()
        #print(res)
        for i in range(0,len(res)):
            message_embeddings =model([res[i]])
            sentence_embedding_adera =model([df_adera2['points'][kk]])
            ader1=sentence_embedding_adera.reshape(1,1,512)
            result2_adera=grace_todel_model.predict(ader1)
            distance=np.abs(result2_adera - message_embeddings).max()
            locate_results_adera[kk,i]=distance


    text_file_adera="final_results.txt"                      
    text_file = open(text_file_adera, "a")       

    for kk in range(0,len(df_adera2)):
        gr1=np.argmin(locate_results_adera[kk,:])
        text_file.write(str(kk))
        text_file.write("_1 ")
        text_file.write(df_adera2['points'][kk].split()[gr1])
        text_file.write("\n")  
        
        gr2a=np.sort(locate_results_adera[kk,:], axis=0)[1]
        idx_Adera = list(locate_results_adera[kk,:]).index(gr2a) 
        text_file.write(str(kk))
        text_file.write("_2 ") 
        text_file.write(df_adera2['points'][kk].split()[idx_Adera]) 
        text_file.write("\n") 
    
    text_file.close()
    print('All done.')

# main function that runs everything
# in the correct order
def main(query,count):
    initialize()
    download_pdfs(query,count)
    create_database()
    enough_pdfs=check_for_pdfs(pdf_count)
    if enough_pdfs == "NO":
        return 'ERROR'
    else:
        take_out_trash()
        analyze(query)
        extract_drug_names()