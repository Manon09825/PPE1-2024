cd ~/Desktop/Fac/Master/PPE/exercice1/ann/2016
echo $1 "en 2016:"
grep $1 *.ann > compte_par_type.txt
wc -l compte_par_type.txt

cd ~/Desktop/Fac/Master/PPE/exercice1/ann/2017
echo $1 "en 2017:"
grep $1 *.ann > compte_par_type.txt
wc -l compte_par_type.txt

cd ~/Desktop/Fac/Master/PPE/exercice1/ann/2018
echo $1 "en 2018:"
grep $1 *.ann > compte_par_type.txt
wc -l compte_par_type.txt
