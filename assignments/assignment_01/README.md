# Code
cd SUPERCOMPUTING #Getting to the folder on local computer

git pull #Making sure the git repository is up to date

cd assignments #Getting to the assignments folder 

cd assignment_01 #Getting to the assignment_01 folder

touch assignment_1_essay.md README.md #Create the required files 

mkdir data output scripts #create placeholder folders

cd data #Getting to the data folder

mkdir raw clean #Making folders for the data directory

cd raw #Entering into one of the folders

touch example.txt raw_data.csv #Add new files to the raw folder

cd .. #Exiting the raw data folder

cd clean #Entering into the other folder

touch example.txt clean_data.csv #Add new files to the clean folder

cd .. #Exiting the clean data folder

cd .. #Exiting the data folder

cd output #Getting into the output folder

touch assignment_01_final.txt assignment_01_results.csv #Adding placeholder files into the output folder

cd .. #Exiting the output folder

cd scripts #Getting into the scripts folder

touch clean_reads.py download_data.py map_reads.py #Add placeholder files into the scripts folder

cd .. #Exiting the scripts folder

cd .. #Exiting the assignment_01 folder

git status #To see what changes need to be staged

git add . #Staging the changed with the git repository

git commit -m "Adding placeholder files in assignment_01" #Commiting the changes to the git repository

git push #Final push to execute the changes

