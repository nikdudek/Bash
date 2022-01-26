#!/usr/bin/bash

#Proste okno z wiadomością
#dialog --title 'Wiadomość' --msgbox 'Witaj w oknie dialogowym' 5 30

#okno z przyciskiem YES NO
#dialog --title 'Wiadomość 2' --yesno 'Lubisz okna dialogowe?' 6 30

#okno informacyjne
#dialog --infobox 'Proszę czekać...' 10 30 ; sleep 4

#okno do wprowadzania danych
#dialog --inputbox 'Podaj swoje imie' 8 40 2>er$$

#okno do wyświetlania tekstu
#dialog --textbox /etc/profile 22 70

#okno z menu
#dialog --menu 'Wybierz kolor:' 10 30 3 a czerwony b zielony c niebieski

#okno z listą opcji do wielokrotnego wyboru ( / == mogę pisać w nowej linii)
#dialog --checklist 'Wybierz podzespoły:' 10 60 3 \
#  1 'GPU' off \
#  2 'CPU' off \
#  3 'RAM' on

#okno z listą pojedyńczego wyboru
#dialog --backtitle 'Wybór notebooka' \
#  --radiolist 'Wybierz producenta' 10 40 4 \
#    1 'Asus' off \
#    2 'Acer' on \
#    3 'Dell' off \
#    4 'Lenovo' off

#okno do wprowadzania hasła
#dialog --title 'Wprowadzanie hasło' \
#  --passwordbox 'Podaj hasło:' 8 40 2> haslo.txt

#okno z wyborem pliku
#dialog --fselect /home/dominik/bash/dialog_examples 10 40 2>sciezka.txt

#okno z pastkiem postępu
#licznik=0
#while [ $licznik -lt 100 ]
#do
#licznik=$[ $licznik + 1 ]
#echo $licznik | dialog --gauge 'Postęp' 8 40
#done

#okno do ustawiania czasu
#dialog --clear --timebox 'Ustaw zegar' 3 8 8 01 2> godz.txt

#okno kalendarza
#dialog --calendar 'Kalendarz' 0 0 20 3 2019 2>data.txt
