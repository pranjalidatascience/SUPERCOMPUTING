#!/bin/bash
set -ueo pipefail

MAIN_DIR=/sciclone/home/pgupta03/SUPERCOMPUTING/assignments/assignment_07
DATA_DIR=${MAIN_DIR}/data
RAW_DATA=${DATA_DIR}/raw
CLEAN_DATA=${DATA_DIR}/clean
DOG_DATA=${DATA_DIR}/dog_reference/ncbi_dataset/data/GCF/sciclone/home/pgupta03/SUPERCOMPUTING/assignments/assignment_07/ncbi_dataset/data/GCF_011100685.1/GCF_011100685.1_UU_Cfam_GSD_1.0_genomic.fna
SCR_DIR=/sciclone/home/pgupta03/scr10
OUT_DIR=${MAIN_DIR}/output

module load miniforge3
source "$(conda info --base)/etc/profile.d/"
conda activate bbmap-env

for FWD in $CLEAN_DATA/*_1.fastq
do
TMP=$(basename $FWD)
OUT="${OUT_DIR}/${TMP/_1.fastq/_mapped.sam}"
bbmap.sh ref=$DOG_DATA in1=$FWD in2=${FWD/_1/_2} out=$OUT minid=0.95
# -b: output BAM format
# -h: include the header (essential for downstream steps)
# -F 4: filter out (exclude) unmapped reads
samtools view -b -h -F 4 .sam > "${OUT_DIR}/${TMP/_1.fastq/_reads.bam}"
done
 

