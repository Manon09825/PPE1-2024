cd ~/Desktop/Fac/Master/PPE/exercice1/ann/2016
echo "Locations en 2016:"
grep "Location" *.ann > resultat_grep.txt
wc -l resultat_grep.txt

cd ~/Desktop/Fac/Master/PPE/exercice1/ann/2017
echo "Locations en 2017:"
grep "Location" *.ann > resultat_grep.txt
wc -l resultat_grep.txt

cd ~/Desktop/Fac/Master/PPE/exercice1/ann/2018
echo "Locations en 2018:"
grep "Location" *.ann > resultat_grep.txt
wc -l resultat_grep.txt
