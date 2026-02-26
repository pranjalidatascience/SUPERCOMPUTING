# Assignment 4

#### Pranjali Gupta 

#### 26th February 2026

## Task 1: Make the "programs" directory

#### We had already done this in class

## Task 2: Download and unpack "tarball" file

#### I believe it was relatively easy for me to find the actual file on GitHub. I just searched the tag and went to releases and found the file

## Task 3: Bash Script for Task 2

#### I stored the bash script I created in the programs directory.

## Task 4: Adding Location of gh binary to PATH 

#### I was able to edit the .bashrc using the nano command and included the path to the gh binary 

## Task 5: Run gh auth login 

#### We had already done this in class so we didn't have to do it again 

## Task 6: Script for seqtk 

#### This is stored in the program directory as well. 

## Task 7: Figure out seqtk 

#### I went through all the commands in the README.md and NEWS.md and found it really helpful. 

## Task 8: Write a "summarize_fasta.sh" script 

#### This is stored in the assignment_04 directory in SUPERCOMPUTING/assignments

## Task 9: Run "summarize_fasta.sh" in a for loop

for file in data/*.fna;

do 

echo "Working on $file"; 

sleep 3; 

bash summarize_fasta.sh $file; 

done

#### I ran this file while being in the assignment_04 directory 

## Reflection 

#### I think the biggest challenge for me was creating the table of sequence names and lengths in a FASTA file. I definitely had to use Google, and it suggested using awk. However, I then used ChatGPT, and it helped me create a function without using any pipelines. It took a little while to figure out, but I think it was the best way to do it because it helped me understand what was happening step by step rather than just chaining commands together.

#### I also ran into an issue where seqtk would not run inside my assignment_04 folder. I realized that I had not properly added seqtk to the end of my $PATH. Because of that, the command was not recognized in that directory.

#### What ended up working was:

#### - Removing the cloned seqtk Git repository

#### - Updating the $PATH variable correctly in my .bash configuration file

#### - Restarting the shell and running it again

#### - After that, it finally worked. I again had to use Google as a resource to troubleshoot this issue.

#### Exploring seqtk was definitely something new that I learned in this assignment. I noticed that seqtk does not have a --help function like many other command-line tools. At first that surprised me, but I found it easier to quickly search online for usage examples rather than digging through the Git repository documentation.

#### From my understanding, $PATH is an environment variable that tells the system where to look for executable programs. If a directory is included in $PATH, then the system (or HPC environment) can access commands from that directory no matter where you are working. In other words, adding a program’s location to $PATH allows you to run it from anywhere in the terminal without needing to type out the full file path.
