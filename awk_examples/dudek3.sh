#!/usr/bin/bash

echo "AWK:"

awk 'BEGIN { FS="," ; ile=0 } $1 ~ /female/ && substr($6,2,length($6)-1)>60 { ++ile } END { print "1.1 Odpowiedz: " ile }' StudentsPerformance.csv

echo ""

awk 'BEGIN { FS="," ; mal=0 ; fem=0 ; mal_c=0 ; fem_c=0 } $1 ~ /female/ { ++fem_c ; fem+=substr($7,2,length($7)-1) } $1 ~ /male/ { ++mal_c ; mal+=substr($7,2,length($7)-1) } END { print "1.2 Odpowiedz:\n Chlopcy: " mal/mal_c ; print "\n Dziewczyny: " fem/fem_c }' StudentsPerformance.csv

echo ""

#awk -F, 'NR>1{tab[$1][$2]}END{for (i in tab) for (j in tab[$1]) print i, tab[i]}' StudentsPerformance.csv

echo ""

awk 'BEGIN { FS="," ; ile=0 } ( substr($1,2,length($1)-1) ~ /^male/ ) && ( $6 ~ /100/ || $7 ~ /100/ || $8 ~ /100/ ) { ++ile } END { print "1.4 Odpowiedz: " ile }' StudentsPerformance.csv

echo "SED:"

#2.1
sed 's/female/0/;s/male/1/' StudentsPerformance.csv > NewStudentsPerformance.csv

#2.2
sed 's/none/0/' StudentsPerformance.csv > NewStudentsPerformance.csv

#2.3
sed 's/group A/A/;s/group B/B/;s/group C/C/;s/group D/D/;s/group E/E/' StudentsPerformance.csv > NewStudentsPerformance.csv
