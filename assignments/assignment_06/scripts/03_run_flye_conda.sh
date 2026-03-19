#!/bin/bash

BASE_DIR=~/SUPERCOMPUTING/assignments/assignment_06/
DATA_DIR=${BASE_DIR}/data
DATA=${DATA_DIR}/SRR22929694.fastq
ASS_DIR=${BASE_DIR}/assemblies

set -ueo pipefail

module load miniforge3
source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate flye-env

flye --nano-raw data/SRR33939694.fastq --meta --threads 6 --genome-size 52.9M --out-dir $ASS_DIR/assembly_conda

cd $ASS_DIR/assembly_conda

mv assembly.fasta conda_assembly.fasta

mv flye.log conda_flye.log

rm -r *0-*

rm assembly_*

rm *.json

conda deactivate
