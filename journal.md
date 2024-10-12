# Journal de bord du projet encadré
## 06 octobre:
- test des fonctions git, création du journal de bord. J'ai eu quelques difficultés à comprendre le fonctionnement du github, mais il me semble avoir finalement réussi à faire ce qui était demandé, même si en nommant mon dépôt "PPE1-2024" il m'a été impossible de le cloner sur ma machine car il existait déjà un dossier du même nom, j'ai donc rajouté "_2" au nom de mon dépôt (sur ma machine). Après avoir créé le journal j'ai réussi à obtenir de git status la même réponse que dans l'exercice 2 en utilisant les commandes git fetch et git pull. En revanche je n'ai pas compris comment ajouter des modifications au journal autrement que depuis Github.

## update:
je ne sais pas si c'est ce qu'il fallait faire, mais j'ai essayé (avec le terminal) d'ouvrir mon journal avec un éditeur de test et de le modifier à partir de là.

## update2:
j'ai réussi à utiliser les fonctions git commit et git push et ainsi à modifier mon journal de bord depuis ma machine. J'ai eu quelques problèmes avec la fonction git commit; j'ai d'abord oublié de l'accompagner de "-m" et d'un message de description, et le terminal ouvrait une page que je n'étais pas sûre de comprendre. J'ai donc cherché des informations dans mon cours et retrouvé le moyen d'ajouter une description en utilisant "-m". Il me semble donc que j'arrive à utiliser toutes les fonctions vues en cours jusqu'ici.

## 12 octobre:
- Au dernier cours on a corrigé les exercices à faire sur github et j'ai compris comment modifier le journal de bord à partir du terminal, grâce à la commande vim (en tapant donc `vim journal.md`). J'ai aussi appris à améliorer la présentation du journal, notamment pour que tout ne soit pas écrit comme sous-titre !

- J'ai fait le 1er exercice (produire un fichier contenant le nombre d'annotations présentes dans les fichiers 2016, 2017 et 2018 d'un dossier que nous avions trié au premier cours). Je me suis surtout servie de la commande `cat *.ann|wc` après avoir ouvert le fichier adéquat (2016, 2017 ou 2018) pour obtenir le nombre d'annotations.
La commande m'a donné en premier le nombre de lignes, puis le nombre de caractères et enfin le nombre d'octets utilisés dans chaque fichier ann pour chaque année. J'ai pris en compte le nombre de lignes car on a vu que dans ces fichiers, une ligne correspondait à une annotation. Pour produire le fichier final "comptes.txt" j'ai ouvert un éditeur de texte (kate) grâce au terminal et j'ai rempli manuellement les informations obtenues grâce à la commande wc.

