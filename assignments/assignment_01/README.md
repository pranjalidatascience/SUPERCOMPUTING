cd SUPERCOMPUTING 
git pull
cd assignments
cd assignment_01
touch assignment_1_essay.md README.md
mkdir data output scripts
cd data
mkdir raw clean
cd raw 
touch example.txt raw_data.csv
cd ..
cd clean
touch example.txt clean_data.csv
cd ..
cd ..
cd output
touch assignment_01_final.txt assignment_01_results.csv
cd ..
cd scripts
touch clean_reads.py download_data.py map_reads.py
cd ..
cd ..
git status
git add .
git commit -m "Adding placeholder files in assignment_01"
git push

