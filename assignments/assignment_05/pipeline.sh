#!/bin/bash 

set -euo pipefail

./scripts/01_download_data.sh

for i in ./data/raw/*_R1_*; do ./scripts/02_run_fastp.sh $i; done


