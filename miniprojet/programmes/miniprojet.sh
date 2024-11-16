#!/usr/bin/env bash

echo "<html><table>
    <head>
    <tr>
        <th>numero_ligne</th>
        <th>url</th>
        <th>code_http</th>
        <th>encodage</th>
        <th>nombre_mots</th>
    </tr>
    </head>" > ../tableaux/tableau-fr.html


if [ $# -ne 1 ]
then
	echo "le script prend exactement 1 argument"
	exit
fi

fichier_urls=$1

nb_lignes=1

while read -r line
do
    http_code=$(curl -s -I -L -w "%{http_code}" -o /dev/null $line)
    encodage=$(curl -s -I -L -w "%{content_type}" -o /dev/null $line | grep -P -o "charset=\S+" | cut -d "=" -f2)
    nbmots=$(lynx -dump -nolist $line | wc -w)

    echo "<body>
        <tr>
            <td>$nb_lignes</td>
            <td>$line</td>
            <td>$http_code</td>
            <td>$encodage</td>
            <td>$nbmots</td>
        </tr>
    </body>"

    nb_lignes=$(expr $nb_lignes + 1)
done < $fichier_urls >> ../tableaux/tableau-fr.html
echo " </table>
    </html>" >> ../tableaux/tableau-fr.html
