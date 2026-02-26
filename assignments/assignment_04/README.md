# Assignment 4

Pranjali Gupta 

26th February 2026

## Task 1: Make the "programs" directory

### We had already done this in class

## Task 2: Download and unpack "tarball" file

### I believe it was relatively easy for me to find the actual file on GitHub. I just searched the tag and went to releases and found the file

## Task 3: Bash Script for Task 2

### I stored the bash script I created in the programs directory.

## Task 4: Adding Location of gh binary to PATH 

### I was able to edit the .bashrc using the nano command and included the path to the gh binary 

## Task 5: Run gh auth login 

### We had already done this in class so we didn't have to do it again 

## Task 6: Script for seqtk 

### This is stored in the program directory as well. 

## Task 7: Figure out seqtk 

### I went through all the commands in the README.md and NEWS.md and found it really helpful. 

## Task 8: Write a "summarize_fasta.sh" script 

### This is stored in the assignment_04 directory in SUPERCOMPUTING/assignments

### Task 9: Run "summarize_fasta.sh" in a for loop

for file in data/*.fna; do echo "Working on $file"; sleep 3; bash summarize_fasta.sh $file; done

## I ran this file while being in the assignment_04 directory 

## Reflection 

I think the biggest challenge for me was creating the table of sequence of names and lengths in a fasta file. I had to definitely use google but it told me to use awk but I then used ChatGPT and it helped me create a function without any pipelines. It took a little while but I think it was the best way to do it. 

I think I had also messed up by not adding the seqtk at the end of the $PATH and so it wouldn't run in my assignment_04 folder but it worked once I removed the seqtk clone of the git repo and then changed the $PATH directory in the bash file and then ran it again and then it finally worked. I again had to use Google as a resource for this. 

Exploring the seqtk was definitely something I learned new. I was also very curious that the seqtk doesn't have a --help function but I thought it was definitely easier to be able to google than look for documentation in the git repository.

## What $PATH is and how it's used

$PATH from my understanding is, a universal command so that if there is any path inside there, the HPC can access that from anywhere. 
