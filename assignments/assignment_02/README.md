# Download the FTP using brew

I started by just typing ftp and it didn't work and after googling it a little, I was able to figure out that I didn't have the fit client downloaded. 

brew install inetutils #I didn't have the ftp client so I had to download that first

ftp ftp.ncbi.nlm.nih.gov #Connecting to the server

Then, I logged in using anonymous and my email as the username and password and I was getting a bunch of errors about illegal port command and not understood. I had to use google again and figured out that there were some settings that needed to change in order for me to download the two files

cd genomes/all/GCF/000/005/845/GCF_000005845.2_ASM584v2/ #To get to the required directory 

binary #The binary mode was supposed to be used because the files were in the .gz format

pass #This turns on the passive mode on

# Download the Required Files

get GCF_000005845.2_ASM584v2_genomic.fna.gz

get GCF_000005845.2_ASM584v2_genomic.gff.gz


