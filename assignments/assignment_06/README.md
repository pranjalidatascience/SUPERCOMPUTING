# Assignment 6
Pranjali Gupta
March 19th, 2026

## Task 1: Set up Assignment 6 Directory

cd SUEPERCOMPUTING/assignments/assignment_06

mkdir assemblies data scripts

touch pipeline.sh README.md

cd assemblies

mkdir assembly_conda assembly_local assembly_module

## Task 2: Download Data

wget https://zenodo.org/records/15730819/files/SRR33939694.fastq.gz

### I didn't know whether or not to use gzip to make the file readable. I double checked with the directory attached in Task 1 and decided not to use gzip. 

## Task 3: Flye Local Build

### I was able to clone the Flye git repository using the commands in the GitHub Repository Link. After that, I also added it in the .bashrc. 

## Task 4: Flye Conda Build

### I loaded miniforge3 and initialised the conda environment. Then, I created the flye-env and activated it. To check if it was running, I used the "flye -v" and it outputed 2.9.6-b1802. Then I exported the .yml file. 

## Task 5: How to use Flye

### I used the documentation in the Github repository and --help command to figure out how to use Flye. I also used the ncbi link to refer to what size I should use for the --genome-size command. I think this was the most time consuming part in my opinion. I also had to use Google Search to figure out how to see if there should be more than one type of phage in the data set.

## Task 6: Run Flye

### I indepently tried to run all the different ways to run Flye seperetly and then built a script for it using the three different ways.

## Task 7: Compare the Results in log files

### I just used the tail command to subset the last 10 lines in each of the log files and also decided to do it using a for loop because I thought it would be better that way.

## Task 8: Build a 'pipeline.sh'

### I just called all the scripts in a sequential order. 

## Reflection 

### Challenges
- My pipeline kept being broken because I had added the exec bash command in one of the scripts.
- Also I had some typos in different places so everytime the pipeline started over I had to delete all the progress and re-did it. 

### New Things I Learned
- It is so interesting to see how a large file can be summarised so fast. 

### Preference
- I think I would probably prefer the Module way to use Flye. 
- The Module one is easiest to load and requires the least amount of steps. 



### My pipeline kept being broken because I had put "exec bash" in one of my scripts.

