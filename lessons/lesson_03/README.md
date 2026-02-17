
OUT_DIR="/sciclone/home/gzahn/output"

echo "I am learning!" > ${OUT_DIR}/what_im_doing.txt

The above will create a new file what_im_doing.txt and the standard out will echo to the text file. 

When we use quotes in bash, double quotes allow expansions in those files. 

If you have a variable name with dollar sign symbol, you should single quote.

Variable expansion use {}

Process Substitution use ()

paste works on files and not on texts. Opposite of cut. Here we are sticking files together. Paste sticks them together from 1 to 5. 


