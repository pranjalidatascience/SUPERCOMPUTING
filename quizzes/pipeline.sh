#!/bin/bash

#Downloading and Extracting the data 
./scripts/01_prep_data.sh

# Using a seqkit command to get premilinary statistics of the data and putting it in output folder
./scripts/02_get_stats.sh 

#Removing the Unextracted data folder
./scripts/03_cleanup.sh

