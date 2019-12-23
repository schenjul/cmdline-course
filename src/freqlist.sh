#! /bin/bash

cat $1 |
tr -s '[:space:]' '\n' |
tr -d '[:punct:]' |
tr A-ZÄÖÜ a-zäöü |
sort | 
uniq -c | 
sort -nr > $2
