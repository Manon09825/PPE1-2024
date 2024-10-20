for an in 2016 2017 2018;
do
    cd ~/Desktop/Fac/Master/PPE/exercice1/ann/$an
    echo $1 "en $an:"
    grep $1 *.ann > compte_par_type.txt
    wc -l compte_par_type.txt
done
