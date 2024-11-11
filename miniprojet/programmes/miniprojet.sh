#!/usr/bin/env bash

if [ $# -ne 1 ]
then
	echo "le script prend exactement 1 argument"
	exit
fi

numero=1
while read -r line
do
	echo $numero $line
	let numero=$numero+1
done < "$1" > ../tableaux/tableau-fr.tsv
