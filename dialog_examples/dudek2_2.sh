#!/usr/bin/bash

name=""
surname=""
mail=""
user=""
passw=""
hobby=""
adr=""

input=$(dialog --ok-label "OK" \
--form "Formularz" \
15 40 0 \
"Imie:" 1 1 "$name" 1 10 15 14 \
"Nazwisko:" 2 1 "$surname" 2 10 15 14 \
"E-mail:" 3 1 "$mail" 3 10 15 14 \
"Login:" 4 1 "$user" 4 10 15 14 \
"Hasło:" 5 1 "$passw" 5 10 15 14 \
"Hobby:" 6 1 "$hobby" 6 10 15 14 \
3>&1 1>&2 2>&3 3>&- \
)

out=$?
directory=""

if [ "$out" -eq "0" ] ; then
  directory=$(dialog --inputbox 'Podaj sciezke i nazwe pliku:' 8 40 2 \
  3>&1 1>&2 2>&3 3>&- \
  )
fi

echo $out >> $directory

