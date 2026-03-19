#!/bin/bash

set -ueo pipefail

BASE_DIR=/sciclone/home/pgupta03/SUPERCOMPUTING/assignments/assignment_06
DATA_DIR=${BASE_DIR}/data

cd $DATA_DIR

wget https://zenodo.org/records/15730819/files/SRR33939694.fastq.gz
