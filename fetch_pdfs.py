import os
import requests
from bs4 import BeautifulSoup
import re
import urllib

# headers to use for requests
headers = requests.utils.default_headers()

# changing the user agent
headers['User-Agent'] = 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'

# defining constants
max_retries = 3  # how many times to try downloading an article
error_file = 'unfetched_pmids.tsv' # where to store pmids that could not be downloaded
out_dir = 'fetched_pdfs' # where to store downloaded pdfs

# get the main url
def getMainUrl(url):
    return "/".join(url.split("/")[:3])

# write content of the request.get to pdf file
def savePdfFromUrl(pdfUrl,directory,name,headers):
    t=requests.get(pdfUrl,headers=headers,allow_redirects=True)
    with open('{0}/{1}.pdf'.format(directory,name), 'wb') as f:
        f.write(t.content)

def fetch(pmid,finders,name,headers,errorPmids):
    uri = "http://eutils.ncbi.nlm.nih.gov/entrez/eutils/elink.fcgi?dbfrom=pubmed&id={0}&retmode=ref&cmd=prlinks".format(pmid)
    success = False
    dontTry=False
    if os.path.exists("{0}/{1}.pdf".format(out_dir,pmid)): # bypass finders if pdf reprint already stored locally
        print ("** Reprint #{0} already downloaded and in folder; skipping.".format(pmid))
        return
    else:
        #first, download the html from the page that is on the other side of the pubmed API
        req=requests.get(uri,headers=headers)
        if 'ovid' in req.url:
            print (" ** Reprint {0} cannot be fetched as ovid is not supported by the requests package.".format(pmid))
            errorPmids.write("{}\t{}\n".format(pmid,name))
            dontTry=True
            success=True
        soup=BeautifulSoup(req.content,'lxml')
#         return soup
        # loop through all finders until it finds one that return the pdf reprint
        if not dontTry:
            for finder in finders:
                print ("Trying {0}".format(finder))
                pdfUrl = eval(finder)(req,soup,headers)
                if type(pdfUrl)!=type(None):
                    savePdfFromUrl(pdfUrl,out_dir,name,headers)
                    success = True
                    print ("** fetching of reprint {0} succeeded".format(pmid))
                    break
       
        if not success:
            print ("** Reprint {0} could not be fetched with the current finders.".format(pmid))
            errorPmids.write("{}\t{}\n".format(pmid,name))





def acsPublications(req,soup,headers):
    possibleLinks=[x for x in soup.find_all('a') if type(x.get('title'))==str and ('high-res pdf' in x.get('title').lower() or 'low-res pdf' in x.get('title').lower())]
    
    if len(possibleLinks)>0:
        print ("** fetching reprint using the 'acsPublications' finder...")
        pdfUrl=getMainUrl(req.url)+possibleLinks[0].get('href')
        return pdfUrl
    
    return None



def direct_pdf_link(req,soup,headers): 
    
    if req.content[-4:]=='.pdf':
        print ("** fetching reprint using the 'direct pdf link' finder...")
        pdfUrl=req.content
        return pdfUrl
    
    return None




def futureMedicine(req,soup,headers):
    possibleLinks=soup.find_all('a',attrs={'href':re.compile("/doi/pdf")})
    if len(possibleLinks)>0:
        print ("** fetching reprint using the 'future medicine' finder...")
        pdfUrl=getMainUrl(req.url)+possibleLinks[0].get('href')
        return pdfUrl
    return None



def genericCitationLabelled(req,soup,headers):
    
    possibleLinks=soup.find_all('meta',attrs={'name':'citation_pdf_url'})
    if len(possibleLinks)>0:
        print ("** fetching reprint using the 'generic citation labelled' finder...")
        pdfUrl=possibleLinks[0].get('content')
        return pdfUrl
    return None
    



def nejm(req,soup,headers):
    possibleLinks=[x for x in soup.find_all('a') if type(x.get('data-download-type'))==str and (x.get('data-download-type').lower()=='article pdf')]
        
    if len(possibleLinks)>0:
        print ("** fetching reprint using the 'NEJM' finder...")
        pdfUrl=getMainUrl(req.url)+possibleLinks[0].get('href')
        return pdfUrl
    
    return None



def pubmed_central_v1(req,soup,headers):
    possibleLinks=soup.find_all('a',re.compile('pdf'))
    
    possibleLinks=[x for x in possibleLinks if 'epdf' not in x.get('title').lower()] #this allows the pubmed_central finder to also work for wiley
    
    if len(possibleLinks)>0:
        print ("** fetching reprint using the 'pubmed central' finder...")
        pdfUrl=getMainUrl(req.url)+possibleLinks[0].get('href')
        return pdfUrl
    
    return None



def pubmed_central_v2(req,soup,headers):
    possibleLinks=soup.find_all('a',attrs={'href':re.compile('/pmc/articles')})
        
    if len(possibleLinks)>0:
        print ("** fetching reprint using the 'pubmed central' finder...")
        pdfUrl="https://www.ncbi.nlm.nih.gov/{}".format(possibleLinks[0].get('href'))
        return pdfUrl
    
    return None



def science_direct(req,soup,headers):
    newUri=urllib.parse.unquote(soup.find_all('input')[0].get('value'))
    req=requests.get(newUri,allow_redirects=True,headers=headers)
    soup=BeautifulSoup(req.content,'lxml')

    possibleLinks=soup.find_all('meta',attrs={'name':'citation_pdf_url'})
    
    
    
    if len(possibleLinks)>0:
        print ("** fetching reprint using the 'science_direct' finder...")
        req=requests.get(possibleLinks[0].get('content'),headers=headers)
        soup=BeautifulSoup(req.content,'lxml')
        pdfUrl=soup.find_all('a')[0].get('href')
        return pdfUrl
    return None




def uchicagoPress(req,soup,headers):
    possibleLinks=[x for x in soup.find_all('a') if type(x.get('href'))==str and 'pdf' in x.get('href') and '.edu/doi/' in x.get('href')]    
    if len(possibleLinks)>0:
        print ("** fetching reprint using the 'uchicagoPress' finder...")
        pdfUrl=getMainUrl(req.url)+possibleLinks[0].get('href')
        return pdfUrl
    
    return None

finders=[
         'genericCitationLabelled',
         'pubmed_central_v2',
         'acsPublications',
         'uchicagoPress',
         'nejm',
         'futureMedicine',
         'science_direct',
         'direct_pdf_link',
]

def get_pdfs(pmids):
    names=pmids
    with open(error_file,'w+') as errorPmids:
        for pmid,name in zip(pmids,names):
            print ("Trying to fetch pmid {0}".format(pmid))
            retriesSoFar=0
            while retriesSoFar<max_retries:
                try:
                    soup=fetch(pmid,finders,name,headers,errorPmids)
                    retriesSoFar=max_retries
                except requests.ConnectionError as e:
                    if '104' in str(e) or 'BadStatusLine' in str(e):
                        retriesSoFar+=1
                        if retriesSoFar<max_retries:
                            print ("** fetching of reprint {0} failed, retrying".format(pmid))
                        else:
                            print ("** fetching of reprint {0} failed.".format(pmid))
                            errorPmids.write("{}\t{}\n".format(pmid,name))
                    else:
                        print ("** fetching of reprint {0} failed.".format(pmid))
                        retriesSoFar=max_retries
                        errorPmids.write("{}\t{}\n".format(pmid,name))
                except Exception as e:
                    print ("** fetching of reprint {0} failed.".format(pmid))
                    retriesSoFar=max_retries
                    errorPmids.write("{}\t{}\n".format(pmid,name))