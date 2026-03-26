# Assignment 7
Pranjali Gupta
March 26th, 2026

## Task 1: Set up directory

cd SUPERCOMPUTING/assignments/assignment_07

mkdir data output scripts

cd data 

mkdir clean dog_reference raw

## Task 2: Download Data

#### Having no prior knowledge as to what Shotgun metagenomic data means I just searched that, then added a filter for “Illumina sequences” as a part of my search string. 

#### I stored my metadata file in the main directory of the Assignment 7 folder. 


## Task 3: Clean up raw reads

#### Having used fastp in previous assignments, it was easy to configure. Apart from sending .json and .html to the nether world, I made sure the quality was over 20.” 

## Task 4: Map clean reads to dog genome

#### Since the nodes in bora have 64gb, we should use maximum memory so that it runs faster on the bora node.

## Task 5: Extract reads that matched dog genome

#### For some reason, I couldn’t export the PATH for samtools properly because I didn’t follow the steps in the documentation website. 

## Task 6: Submit job to SLURM

#### I used sbatch to submit my “assignment_7_pipeline.sh” 

## Reflections

### Challenges

#### I didn’t realise this assignment would take this long to run and definitely more than a week’s time to finish. 

#### It would have been really helpful knowing the context behind some of the tools we are using because I felt kind of what I need to be looking for.

#### I really couldn’t get the HPC to run my pipeline because it “TIMED OUT” when I was sleeping. I had given it 20 hours of time and somehow it still timed out.  

### New Things you learned

#### Not a new thing, but I learned that it is better to start your assignments early.

#### I said it in the beginning of the semester, but I think it’s really cool how I can now submit jobs on an HPC far far away and get back.
