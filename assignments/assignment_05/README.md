# Assignment 5

## Task 1: Set up Assignment 5 Directory

cd SUPERCOMPUTING/assignments/assignment_05 #

mkdir scripts data log

touch README.md pipeline.sh

cd scripts

touch 01_download_data.sh 02_run_fastp.sh

cd .. 

cd data

mkdir raw trimmed

## Task 3: Install fastp tool 

wget http://opengene.org/fastp/fastp
chmod a+x ./fastp

#### Don't need to put this in the .bashrc because this path is already in the bashrc  

#### fastp: an ultra-fast all-in-one FASTQ preprocessor
#### version 1.1.0
