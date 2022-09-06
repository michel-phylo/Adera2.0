Adera2.0 is built using python.

The purpose of Adera2.0 is to pinpoint drugs that have been already validated for human usage that can be used to treat a different disease. For example, there is a disease (A) with no current effective medication. The task of Adera2.0 is to find a known drug that has been already validated to treat disease B. and repurpose it to treat disease (A).This process is known as drug repurposing. To find these known drugs, Adera can take a question query in one of the following categories

(i) generic questions about diseases for example: what are the drugs known to treat cancer
(ii) the user can also search within a type of drug for example: what are the known types of statins
(iii) it could also be used to answer questions related to a specific pathway. for example: what are the known agonists of SLC38A6?


Based on this, Adera2.0 will automatically search PubMed for PDFs that could be answering the user query. following that, the software downloads these chosen PDFs and parses them into one JSON database. After that, the software estimates the embedding of each sentence included in the PDFs. Embedding is essentially building a matrix whose components represent each unique sentence.

Having done that, the software calculates the relevance between each matrix representing each unique sentence of the PDF and the user query matrix. After that, the software proceeds to sort the sentences based on their relevance. Then the software extracts the drug names from each relevant sentence. The relevant sentences and the drug names are written in separate files.

Case study
In case the user needs to choose a drug for cardiovascular diseases, the best strategy is to look for medications that are known to target a pathway that is common between cardiovascular diseases and the diseases the user wants to purpose from. The peer-reviewed manuscript explaining the procedure in more detail is available on biorxiv and MDPI (soon).

There is a complete and updated WIKI that could be used to guide you while installing the software and give yuou tips on how to make the best use of it.
