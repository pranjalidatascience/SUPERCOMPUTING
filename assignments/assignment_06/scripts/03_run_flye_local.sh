#!/bin/bash

BASE_DIR=~/SUPERCOMPUTING/assignments/assignment_06
DATA_DIR=${BASE_DIR}/data
DATA=${DATA_DIR}/SRR33939694.fastq.gz
ASS_DIR=${BASE_DIR}/assemblies

set -ueo pipefail

cd $BASE_DIR

flye --nano-raw $DATA --meta --threads 6 --genome-size 52.9M --out-dir $ASS_DIR/assembly_local

cd $ASS_DIR/assembly_local

mv assembly.fasta local_assembly.fasta

mv flye.log local_flye.log

rm -r *0-*

rm assembly_*

rm *.json
