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

./pipeline.sh #This should help run the entire pipeline from start to finish

#### One challenge I encountered was accidentally misspelling the 01_download_data.sh script name, which caused the pipeline to fail when calling the script. It would repeatedly show the error that file is not found. I thought it was because of permission issues but it was a spelling error. After correcting the filename, the pipeline executed correctly.

#### Another challenge was not being able to transfer the trimmed files into the trimmed folder within the data folder but once I re-read the instructions, it was very easy to use the // translation while calling the fastp command. 

#### I learned how to extract just a tar file and it was very easy to do a google search and find what options to use when you are handling different files.  

### Seperate Scripts

#### Pros: 
- If someone already had the data files downloaded, seperate scripts help just pick and choose which ones to run. 
- It is also easier to debug the bash script because it lists where the problem arises. 
- If someone is trying to run a specific script on another computer or high-performance computer, having a 'pipeline' is very beneficial to have a hands-off approach of running it on another computer.
- It is also good for reproducibility in the sense that you only need to run the pipeline if you want to get results from multiple computers. 
- If someone else is trying to replicate it, it is good to have short scripts for readability. 
#### Cons:
- If there are a lot of scripts, it is very hard to keep track of all the connections between them.


