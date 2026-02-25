#!/bin/bash
set -ueo pipefail

var=$1

grep -c "^>" $var>n_seq.tmp

grep -v "^>" $var | wc -c>n_nucle.tmp

seqtk comp $var| awk '{print $1 "\t" $2}'>table.tmp

echo "Total Number of sequences in ${var}:" |cat - n_seq.tmp

echo "Total Number of Nucleotides in ${var}:"|cat - n_nucle.tmp

echo "Table of Sequences and Lengths in ${var}:"|cat - table.tmp


