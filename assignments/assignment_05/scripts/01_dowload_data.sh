#!/bin/bash
set -ueo pipefail

wget https://gzahn.github.io/data/fastq_examples.tar

tar -xvf fastq_examples.tar

mv *.fastq.gz ./data/raw

mv *.tar ./data/raw

cd ./data/raw

rm fastq_examples.tar


