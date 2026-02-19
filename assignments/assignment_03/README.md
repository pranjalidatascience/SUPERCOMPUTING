# Assignment 3

Pranjali Gupta
February 18th, 2026

## Task 1: Setting up the Assignment 3 Directory 

cd SUPERCOMPUTING/assignments/assignment_03 #Get to the correct directory 

mkdir data 

touch README.md 

## Task 2: Download the Fasta Sequence

cd data 

wget https://gzahn.github.io/data/GCF_000001735.4_TAIR10.1_genomic.fna.gz #Getting the file from the link 

gunzip GCF_000001735.4_TAIR10.1_genomic.fna.gz #Uncompressing the File 

## Task 3: Explore File Contents

genom= GCF_000001735.4_TAIR10.1_genomic.fna #Creating a shortcut to make exploring a little easier 

### 1. How many sequences are in the FASTA file?

grep -c ">" $genom 

### 2. What is the total number of nucleotides (not including header lines or newlines)?

grep -v "^>" $genom|tr -d  "\n" | wc -c

### 3. How many total lines are in the file? 

wc -l $genom

### 4. How many header lines contain the word "mitochondrion"?

grep "^>" $genom | grep -c "mitochondrion"

### 5. How many header lines contain the word "chromosome"?

grep "^>" $genom | grep -c "chromosome" 

### 6. How many nucleotides are in each of the first 3 chromosome sequences?

grep -v "^>" $genom | head -n 1 | wc -c

grep -v "^>" $genom | head -n 2|tail -n 1 | wc -c

grep -v "^>" $genom | head -n 3|tail -n 1 | wc -c 

### 7. How many nucleotides are in the sequence for 'chromosome 5'?

grep -v "^>" $genom | head -n 5|tail -n 1 | wc -c

### 8. How many sequences contain "AAAAAAAAAAAAAAAA"?

grep -v "^>" $genom | grep -c "AAAAAAAAAAAAAAAA"

### 9. If you were to sort the sequences alphabetically, which sequence (header) would be first in that list?

grep "^>" $genom | sort | head -n 1

### 10. How would you make a new tab-separated version of this file, where the first column is the headers and the second column are the associated sequences? (show the command(s))

paste <(grep “^>” $genom) <(grep -v “^>” $genom) 

## Task 5: Reflection 

This assignment really helped me dig deep into how without using a python script, there is a lot that can be done to learn more about the file we are working with. It is useful to run this stuff beforehand to get some insights on how big the data is, some initial analysis of the data.

I think I broke down each problem into tiny problems, which really helped me answer questions in a fast and effective manner. Whenever I thought that I was unable to come to an answer, I thought "command" --help really worked for me. I also believe that sometimes I was reading too much into the problem as well. In the question about the header line with "mitochondrion", I didn't know if I should filter for headerline first and then look for "mitochondrion" or directly look for “mitochondrion” since there can't be any in the nucleotides section. 

For question 2, I was a little stumped because the original answer I had was off by 7 and I couldn't figure it out, until I saw the word "newlines" and I also decided to use external online resources like Google to assist me on this and ended up "translating" the new lines and removing them. In this case as well, the tr --help really came in handy. 

I think these kinds of skills are essential in computational work because this helps the researcher understand what kind of data they're working with, and also the resources they need to run python scripts on. For example, If it is an unusually large fasta file with a lot of sequences and long nucleotides in them, maybe we need to use all the cores in a node or maybe consider using a GPU. 

In the future, I think some of the statements can be made a lot more comprehensive by making them more human-readable. For example, if we're trying to find the number of times the word "mitochondrion" is in the file, we can have a command like "count "mitochondrion" <\filename\>". I believe even if it is automated in a different way maybe like how descriptive statistics are displayed. For example, typing the word like "ds <\filename\>", it returns the total number of lines, characters, sentences, some of the most frequent essential words, first few lines of how the data looks, among other things would probably help with automating this process. 
