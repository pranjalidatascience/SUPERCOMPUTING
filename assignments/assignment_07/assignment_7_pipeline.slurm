#!/bin/bash

set -ueo pipefail 

#SBATCH --job-name=assignment7
#SBATCH --nodes=1 # how many physical machines in the cluster
#SBATCH --ntasks=1 # how many separate 'tasks' (stick to 1)
#SBATCH --cpus-per-task=20 # how many cores (bora max is 20)
#SBATCH --time=0-20:00:00 # d-hh:mm:ss or just No. of minutes
#SBATCH --mem=5000G # how much physical memory (all by default)
#SBATCH --mail-type=FAIL,BEGIN,END # when to email you
#SBATCH --mail-user=pgupta03@wm.edu # who to email
#SBATCH -o assignment7_%j.out #STDOUT to file (%j is jobID)
#SBATCH -e assignment7_%j.err #STDERR to file (%j is jobID)

bash ./scripts/01_download_data.sh
bash ./scripts/02_clean_reads.sh
bash ./scripts/03_map_reads.sh
