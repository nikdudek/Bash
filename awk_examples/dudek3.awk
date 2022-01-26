#!/usr/bin/awk -f

awk 'BEGIN { FS="," ; ile=0 } $1 ~ /female/ && substr($6,2,length($6)-1)>60 { ++ile } END { print "Odpowiedz: " ile }' StudentsPerformance.csv
