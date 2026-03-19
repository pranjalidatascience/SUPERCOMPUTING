#!/bin/bash

BASE_DIR=~/SUPERCOMPUTING/assignments/assignment_06
DATA_DIR=${BASE_DIR}/data
DATA=${DATA_DIR}/SRR33939694.fastq.gz
ASS_DIR=${BASE_DIR}/assemblies

set -ueo pipefail

cd $BASE_DIR

module load Flye

flye --nano-raw $DATA --meta --threads 6 --genome-size 52.9M --out-dir $ASS_DIR/assembly_module

cd $ASS_DIR/assembly_module

mv assembly.fasta module_assembly.fasta

mv flye.log module_flye.log

rm -r *0-*

rm assembly_*

rm *.json

