#!/bin/bash

set -ueo pipefail

MAIN_DIR=/sciclone/home/pgupta03/SUPERCOMPUTING/assignments/assignment_07
DATA_DIR=${MAIN_DIR}/data
RAW_DATA=${DATA_DIR}/raw
CLEAN_DATA=${DATA_DIR}/clean
DOG_DATA=${DATA_DIR}/dog_reference
SCR_DIR=/sciclone/home/pgupta03/scr10

for FWD in $RAW_DATA/*_1.fastq; do  echo $FWD; REV=${FWD/_1/_2}; echo $REV; OUTFWD=${FWD/raw/clean}; echo $OUTFWD; OUTREV=${REV/raw/clean}; echo $OUTREV; fastp --in1 $FWD --in2 $REV --out1 $OUTFWD --out2 $OUTREV --json /dev/null --html /dev/null --average_qual 20; done
