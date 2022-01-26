#!/usr/bin/bash

<<KOMENTARZ
Deskryptory

0 - standardowe wejście
1 - standardowe wyjście
2 - standardowe wyjście błędów

KOMENTARZ

#Przykład 1 (utworzenie pliku z zawartością)
ls > pliki.txt

#Przykład 2 (utworzenie pliku z zawartością wykorzystując deskryptory)
#exec 1> "pliki1.txt"
ls >&1

#Przykład 3 (połączenie dwóch plików w całość)
echo "Witaj w Linux" > plik1.txt
echo "Powtórka z Bash" > plik2.txt
cat plik1.txt plik2.txt > plik12.txt

#Przykład 4 (dopisywanie danych do pliku)
echo "Ćwiczenia" >> plik12.txt

# >  (kasuje poprzednią zawartość i zapisuje na czysto)
# >> (dopisuje do pliku z zachowaniem zawartości)

#Przykład 5 (przekierowanie strumieni)
#exec 2>&1
echo "Testujemy" > /dev/null >&2

#Przykład 6 (potoki)
ls -a | grep ".txt."

#Przykład 7 (potoki nazwane)
mkfifo myPipe
ls -al > myPipe
grep ".txt" < myPipe

# w drugiej konsoli: grep ".txt" < myPipe
# w taki sposób można np. wysyłać wiadomości
