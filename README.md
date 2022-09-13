
# Adera 2.0

Adera2.0 is built using Python and Node.js. It uses Flask and Electron for the front-end.

The purpose of Adera2.0 is to pinpoint drugs that have been already validated for human usage that can be used to treat different diseases. For example, there is a disease (A) with no current effective medication. The task of Adera2.0 is to find a known drug that has been already validated to treat disease (B), and repurpose it to treat disease (A).This process is known as drug repurposing. To find these known drugs, Adera can take a question query in one of the following categories:

- **Generic questions about diseases.** For example: 
    
    `what are the drugs known to treat cancer`
- **The user can also search within a type of drug.** For example: 

    `what are the known types of statins`
- **It could also be used to answer questions related to a specific pathway.** For example: 
    
    `what are the known agonists of SLC38A6?`


Using the query, Adera2.0 will automatically search PubMed for PDFs that could be answering the user query. Following that, Adera2.0 downloads these chosen PDFs and parses them into one JSON database prior to estaming the embedding of each sentence included in the PDFs. Embedding is essentially building a matrix whose components represent each unique sentence.

Having done that, Adera2.0 calculates the relevance between each matrix representing each unique sentence of the PDF and the user query matrix. Then, Adera2.0 proceeds to sort the sentences based on their relevance. It extracts the drug names from each relevant sentence. The relevant sentences and the drug names are written in separate files.

## Case study
In case the user needs to choose a drug for cardiovascular diseases, the best strategy is to look for medications that are known to target a pathway that is common between cardiovascular diseases and the diseases the user wants to purpose from. The peer-reviewed manuscript explaining the procedure in more detail is available on biorxiv and MDPI (soon).

There is a complete and updated WIKI that could be used to guide you while installing the software and give yuou tips on how to make the best use of it.

## Dependencies

Adera requires Python 3, Node.js and Visual C++ Build Tools already installed in the target machine. 
 
***Adera 2.0 will show a blank, white page during the first run while it downloads and installs the dependencies it needs. The first run can take a while depending on your internet speed. Please be patient.***

## Installation

#### Option 1

You can clone this repo and run Adera manually. 

1. Clone the repo.
2. While in the directory of the repository, run:

`npm install` to install the Node.js dependencies.

3. After dependencies install, run:

`npm start` to run Adera.

#### Option 2

You can download the zip file from the Releases page, unzip it and run Adera.exe.

#### Option 3 

You can download the setup file provided in the Releases page to install Adera2.0. 