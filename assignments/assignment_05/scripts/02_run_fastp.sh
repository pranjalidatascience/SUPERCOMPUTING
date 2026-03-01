#!/bin/bash

FWD_IN=$1
REV_IN=${FWD_IN/_R1_/_R2_}
FWD_OUT=${FWD_IN/.fastq.gz/.trimmed.fastq.gz}
REV_OUT=${FWD_OUT/_R1_/_R2_}
fastp --in1 $FWD_IN
fastp --out1 $FWD_OUT
fastp --in2 $REV_IN
fastp --out2 $REV_OUT



