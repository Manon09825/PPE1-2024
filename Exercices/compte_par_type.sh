cd ~/Desktop/Fac/Master/PPE/exercice1/ann/$1
grep $2 *.ann > compte_par_type.txt
wc -l compte_par_type.txt
