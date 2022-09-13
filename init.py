from tensorflow_hub import load as loadmodel

def init_stuff():
    print("Initializing Universal Sentence Encoder")
    module_url = "https://tfhub.dev/google/universal-sentence-encoder/4"
    model = loadmodel(module_url)
    return