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

## Task 2: Script to Download and prepare fastq data 

wget https://gzahn.github.io/data/fastq_examples.tar #Downloading the fastq files 

tar -xvf fastq_examples.tar #Extracts the contents

mv *.fastq.gz ./data/raw #Puts all the fastq files into the raw folder within data folder 

mv *.tar ./data/raw #Moving the tar file to the raw data folder

cd ./data/raw #Getting into the raw folder 

rm fastq_examples.tar #Remove the tar files

## Task 3: Install fastp tool 

wget http://opengene.org/fastp/fastp #Installing the fastp tool

chmod a+x ./fastp #Adding permissions to the fastp tool 

#### Don't need to put this in the .bashrc because this path is already in the bashrc  

#### fastp: an ultra-fast all-in-one FASTQ preprocessor
#### version 1.1.0

## Task 4: Script to run fastp

#### I used the parameters to build the 02_run_fastp.sh

## Task 5: pipeline.sh script

#### I ran the 01_download_data.sha and created a for loop to run the data in the raw folder and redirect to trimmed folder

## Task 6: Delete all Data files

#### I deleted all the files and ran the pipeline.sh file to redo it. 

## Reflection 

#### I had accidentally misspelled the 01_download_data.sh and I had written it correctly in the pipeline.sh file and it was saying that it couldn't find the file. I tried a bunch of things with permissions and stuff and it was just a spelling error. 

#### I learned how to extract just a tar file and it was very easy to do a google search and find what options to use when you are handling different files.  

#### 
