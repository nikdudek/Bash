#!/usr/bin/awk -f

#ARGC - ilość parametrów
BEGIN { print "Parametry = ", ARGC }

#ARGV
BEGIN {
  for ( i = 0; i < ARGC - 1; ++i ) {
    printf "ARGV[%d] = %s\n", i, ARGV[i]
  }
}

#CONVFMT - format liczby
BEGIN { print "Format liczby = ", CONVFMT }

#ENVIRON - tablica zmiennych środowiskowych
BEGIN { print ENVIRON["USER"] }

#FILENAME - nazwa pliku (z parametru) - tylko blok END !!
END { print FILENAME }

#NF - ilość kolumn
BEGIN {}
NF > 6

#NR - ilość kolumn w aktualnym rekordzie (wierszu)
BEGIN {}
NR > 6

#FNR - podobny do NR, użyteczny przy wielu plikach
#Resetuje wartości, gdy nowy plik

#OFMT - format wyjściowy liczby
BEGIN { print "OFMT = ", OFMT }

#OFS - separator wyjściowy dla pól (kolumn), domyślnie spacja
BEGIN { print "OFS = ", OFS }

#ORS - separator wyjściowy dla rekordów (wierszy), domyślnie nowa linia
BEGIN { print "ORS = ", ORS }
