# Journal de bord du projet encadré
## 06 octobre:
- test des fonctions git, création du journal de bord. J'ai eu quelques difficultés à comprendre le fonctionnement du github, mais il me semble avoir finalement réussi à faire ce qui était demandé, même si en nommant mon dépôt "PPE1-2024" il m'a été impossible de le cloner sur ma machine car il existait déjà un dossier du même nom, j'ai donc rajouté "_2" au nom de mon dépôt (sur ma machine). Après avoir créé le journal j'ai réussi à obtenir de git status la même réponse que dans l'exercice 2 en utilisant les commandes git fetch et git pull. En revanche je n'ai pas compris comment ajouter des modifications au journal autrement que depuis Github.

## update:
je ne sais pas si c'est ce qu'il fallait faire, mais j'ai essayé (avec le terminal) d'ouvrir mon journal avec un éditeur de test et de le modifier à partir de là.

## update2:
j'ai réussi à utiliser les fonctions git commit et git push et ainsi à modifier mon journal de bord depuis ma machine. J'ai eu quelques problèmes avec la fonction git commit; j'ai d'abord oublié de l'accompagner de "-m" et d'un message de description, et le terminal ouvrait une page que je n'étais pas sûre de comprendre. J'ai donc cherché des informations dans mon cours et retrouvé le moyen d'ajouter une description en utilisant "-m". Il me semble donc que j'arrive à utiliser toutes les fonctions vues en cours jusqu'ici.

## 12 octobre:
- Au dernier cours on a corrigé les exercices à faire sur github et j'ai compris comment modifier le journal de bord à partir du terminal, grâce à la commande vim (en tapant donc `vim journal.md`). J'ai aussi appris à améliorer la présentation du journal, notamment à faire en sorte que tout le journal ne soit pas écrit en sous-titre !

- J'ai fait le 1er exercice (produire un fichier contenant le nombre d'annotations présentes dans les fichiers 2016, 2017 et 2018 d'un dossier que nous avions trié au premier cours). Je me suis surtout servie de la commande `cat *.ann|wc` après avoir ouvert le fichier adéquat (2016, 2017 ou 2018) pour obtenir le nombre d'annotations.
La commande m'a donné en premier le nombre de lignes, puis le nombre de caractères et enfin le nombre d'octets utilisés dans chaque fichier ann pour chaque année. J'ai pris en compte le nombre de lignes car on a vu que dans ces fichiers, une ligne correspondait à une annotation. Pour produire le fichier final il a suffi d'utiliser `> comptes.txt`, qui a permis de créer le fichier et d'y ajouter les informations récupérées par les commandes utilisées plus haut. J'ai également utilisé l'éditeur de texte pour remplir manuellement quelques informations (les mentions "Annotations en [...]" et retirer les informations qui n'étaient pas demandées, comme le nombre d'octets ou de caractères). J'ai ajouté le fichier avec les commandes `git add`, `git commit` et`git push`.

## 13 octobre:
- Le deuxième exercice m'a posé plus de problèmes mais j'ai fini par y arriver, en utilisant, pour chaque année, les commandes suivantes (que j'ai regroupées en une ligne les unes à la suite des autres grâce à la barre |):
`cat *.ann` pour que tous les fichiers du dossier soient pris en compte
`grep "Location"` pour que seules les lignes mentionnant un lieu soient prises en compte
`cut -f3` pour ne prendre en compte que le 3e champ, c'est-à-dire le nom des lieux
`sort` pour que les noms des lieux soient triés par ordre alphabétique
`uniq -c` pour que les lignes qui se répètent (donc affichant plusieurs fois le même lieux) soient regroupées en une seule; il était beaucoup moins efficace d'utiliser la commande `uniq` avant d'avoir trié les lignes car il semble que cette commande ne regroupe que les lignes identiques quand elles sont consécutives, c'est donc pour cela que j'ai utilisé `sort` avant `uniq`. L'option -c après la commande `uniq` permet d'afficher le nombre d'occurrence de chaque ligne (donc ici de chaque lieu, puisque grâce à la commande `cut` on a réduit les lignes à prendre en compte aux noms des lieux qu'elles contenaient).
`sort -n` pour trier les lignes par les valeurs numériques qui les précèdent, donc ici le nombre d'occurrence puisqu'on a utilisé la commande `uniq -c` juste avant.
`tail -n 15` pour finir, qui permet de réduire l'affichage du résultat à ses 15 dernières lignes, et ainsi n'afficher que les 15 plus grandes occurrences.

- Une fois le classement des lieux par année effectué, j'ai eu moins de mal à faire l'exercice de classement par mois, puisque j'avais déjà résolu les problèmes que j'avais eus pour classer et j'avais plus ou moins réussi à comprendre comment fonctionnaient les nouvelles commandes. J'ai d'abord essayé de chercher dans tous les fichiers des 3 années en même temps, en tapant `cat 20??_09*` (pour le mois de septembre) mais la commande n'a pas pu être effectuée car aucun fichier de ce nom ne se trouvait directement dans le dossier ann. J'ai suis donc allée chercher les informations dont j'avais dans les 3 dossiers chacun leur tour. J'ai ensuite utilisé les mêmes commandes que pour l'exercice 2.a, en remplaçant `cat *.ann` par `cat 2016_09*`, `cat 2017_09*` ou `cat 2018_09*` pour que seuls les fichiers du mois de septembre ne soient pris en compte.

# Séance 3
## exercices git
<<<<<<< HEAD
Voici quelques lignes bidons.
C'est rigolo.

Cette ligne doit rester après correction.
=======
>>>>>>> parent of 4a8aeae (I AM ERROR)

## copie du fichier oups.md
Exercice 3:
- Je ne suis pas sûre d'avoir compris l'exercice.

- Mais j'essaye quand même, on verra bien.

- J'utilise un `git reset --soft` pour revenir à la dernière version du dépôt sans annuler le staging.

## retour dans le journal de bord normal:
J'ai fait un `git reset --soft HEAD^` pour défaire les commits pas encore poussés sur le fichier oups.md mais je ne suis pas sûre d'avoir vu la différence, après avoir fait le reset j'arrivais toujours à ouvrir le fichier et y voir les lignes que j'avais ajoutées avant de faire le reset.

Je ne suis pas non plus sûre d'avoir réussi à défaire le commit que j'avais poussé sur le journal. J'ai utilisé les commandes `git log` pour avoir accès à l'identifiant SHA du commit au message I AM ERROR et `git revert` pour le défaire, mais je vois que les lignes sont toujours inscrites dans le journal, et je n'arrive pas à comprendre si c'est normal ou pas.
