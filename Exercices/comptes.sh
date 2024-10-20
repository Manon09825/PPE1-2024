for an in 2016 2017 2018;
do
    cd ~/Desktop/Fac/Master/PPE/exercice1/ann/$an
    echo "Locations en $an:"
    grep "Location" *.ann > resultat_grep.txt
    wc -l resultat_grep.txt
done
