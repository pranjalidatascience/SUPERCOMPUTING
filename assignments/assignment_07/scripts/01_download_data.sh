for i in $(cut -d "," -f1 SraRunTable.csv | tail -n 10); do echo $i; fasterq-dump $i ; done

# Still need to move stuff into the required directories
# UGHHHHHH
