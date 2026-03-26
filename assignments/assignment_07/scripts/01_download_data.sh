#!\bin\bash

set -ueo pipefail

#usage:This file uses fasterq-dump version: 3.3.0 and downloaded the 'Canis familiaris' using NCBI 'datasets'

MAIN_DIR=/sciclone/home/pgupta03/SUPERCOMPUTING/assignments/assignment_07
DATA_DIR=${MAIN_DIR}/data
RAW_DATA=${DATA_DIR}/raw
CLEAN_DATA=${DATA_DIR}/clean
DOG_DATA=${DATA_DIR}/dog_reference
SCR_DIR=/sciclone/home/pgupta03/scr10

for i in $(cut -d "," -f1 SraRunTable.csv | tail -n +2); do
echo $i;
fasterq-dump $i -O $SCR_DIR;
head -n 10 $i>${RAW_DIR}/${i};
done
rm -r fasterq.tmp.bora.sciclone.wm.edu.1*


# Download the Dog Dataset
datasets download genome taxon "Canis familiaris" --reference --filename dog_reference_genome.zip
mv $MAIN_DIR\dog_reference_genome.zip $DOG_DATA
unzip dog_reference_genome.zip
cd $MAIN_DIR
# Still need to move stuff into the required directories

