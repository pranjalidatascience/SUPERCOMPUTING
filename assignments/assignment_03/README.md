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

## Task 4: Reflection 


