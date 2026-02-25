#!/bin/bash
set -ueo pipefail

var=$1

grep -c "^>" $var>n_seq.tmp

grep -v "^>" $var | wc -c>n_nucle.tmp

paste <(grep "^>" $var) <(grep -v "^>" |wc -l)>table.tmp
cat n_seq.tmp

cat n_nucle.tmp

cat table.tmp


