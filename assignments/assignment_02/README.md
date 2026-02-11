# Task 1: Set up Semester Workspace

ssh pgupta03@bora.sciclone.wm.edu #Entering the HPC

cd SUPERCOMPUTING #Getting to the working directory

cd assignments #Getting to the assignments directory

cd assignment_02 #Getting to the assignment 2 folder

mkdir data #Making a data directory

# Task 2: Download Files from NCBI using FTP

## Download the FTP using brew

### I started by just typing ftp and it didn't work and after googling it a little, I was able to figure out that I didn't have the fit client downloaded. 

brew install inetutils #I didn't have the ftp client so I had to download that first

ftp ftp.ncbi.nlm.nih.gov #Connecting to the server

### Then, I logged in using anonymous and my email as the username and password and I was getting a bunch of errors about illegal port command and not understood. I had to use google again and figured out that there were some settings that needed to change in order for me to download the two files

cd genomes/all/GCF/000/005/845/GCF_000005845.2_ASM584v2/ #To get to the required directory 

binary #The binary mode was supposed to be used because the files were in the .gz format

pass #This turns on the passive mode on

## Download the Required Files

get GCF_000005845.2_ASM584v2_genomic.fna.gz

get GCF_000005845.2_ASM584v2_genomic.gff.gz

# Task 3: File Transfer and Permission

## Transfer Files to HPC 

### I used FileZilla to transfer the downloaded files to the HPC

### At first, I was unable to find where my files were downloaded, so I had to manually go and find it first and then, set up the SFTP connection using FileZilla

### After using FileZilla to transfer the files, I went into the HPC again. 

## Ensure Files are Readable 
bora

cd SUPERCOMPUTING 

cd assignments

cd assignment_02 #Getting to the right working directory

cd data #Using the data folder

ll #Looking at the permissions using a shortcut of ls -alh

### It seemed like that only the professor would be able to read the files and so, I had to figure out how to give permission to everyone in the group to read the files. I googled and found out that there was a numeric that would help with that. 

chmod 644 GCF_000005845.2_ASM584v2_genomic.gff.gz

chmod 644 GCF_000005845.2_ASM584v2_genomic.fna.gz

### The above helps change the setting so that this file is readable by everyone 

ll #Double check to see if everything worked

# Task 4: Verify File Integrity

## On the Local Machine 

### For the GCF_000005845.2_ASM584v2_genomic.fna.gz (FNA)

### c13d459b5caa702ff7e1f26fe44b8ad7

### For the GCF_000005845.2_ASM584v2_genomic.gff.gz (GFF)

### 2238238dd39e11329547d26ab138be41

## On the HPC 

### For the GCF_000005845.2_ASM584v2_genomic.fna.gz (FNA)

### c13d459b5caa702ff7e1f26fe44b8ad7

### For the GCF_000005845.2_ASM584v2_genomic.gff.gz (GFF)

### 2238238dd39e11329547d26ab138be41

## For both the file formats, the unique hash are the same which affirms that the FTP download and FileZilla transfer did not corrupt the data. 


