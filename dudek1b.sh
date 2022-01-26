#!/usr/bin/bash

echo "Wybierz swoją opcję (podaj nr opcji):"
select komenda in utworz katalog usun kopiuj przenies
do
 case $komenda in
  utworz)
  echo "Podaj nazwe pliku: "
  read opcja
  touch "$opcja" ;;
  katalog)
  echo "Podaj nazwę katalogu: "
  read opcja
  mkdir -p "$opcja" ;;
  usun)
  echo "Podaj nazwę pliku: "
  read opcja
  rm "$opcja" ;;
  kopiuj)
  echo "Podaj ścieżkę pliku do skopiowania: "
  read sc1
  echo "Podaj ścieżkę docelową: "
  read sc2
  cp "$sc1" "$sc2" ;;
  przenies)
  echo "Podaj ścieżkę pliku do przeniesienia: "
  read sc1
  echo "Podaj ścieżkę docelową: "
  read sc2
  mv "$sc1" "$sc2" ;;
  *)
  echo "Błędny wybór. Zamykam skrypt.."
 esac
break
done

echo ""
