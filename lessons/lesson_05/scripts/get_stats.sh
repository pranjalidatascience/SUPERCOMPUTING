#!/bin/bash

# take files as input

# run seqkit stats on them all

seqkit stats ./data/*.fastq >./output/stats.tsv

# export results
