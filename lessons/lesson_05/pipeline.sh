#!/bin/bash

# Pipeline script is the conductor, Calls modular scripts in order

#usage: .pipeline.sh [N bases to chop]

#set variable "N" to be number of bases to chop

#chop up the data
./scripts/chop_files.sh $1
#run stats
./scripts/get_stats.sh



