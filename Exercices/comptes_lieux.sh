cd ~/Desktop/Fac/Master/PPE/exercice1/ann/$1
grep "Location" *.ann > comptelieux.txt
cut -f3 comptelieux.txt > comptelieux2.txt
sort comptelieux2.txt > comptelieux3.txt
uniq -c comptelieux3.txt > comptelieux4.txt
sort -n comptelieux4.txt > comptelieux5.txt
tail -$2 comptelieux5.txt
