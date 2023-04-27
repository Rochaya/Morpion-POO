# Morpion-POO
Morpion en Ruby
Description
Ce programme est une implémentation du jeu Morpion (aussi connu sous le nom de Tic Tac Toe) en Ruby. Il utilise des classes pour représenter les différents éléments du jeu : joueurs, plateau, cases, etc.

Le jeu se joue en deux joueurs, X et O, qui placent tour à tour leur symbole sur un plateau 3x3. Le but du jeu est d'aligner trois symboles identiques horizontalement, verticalement ou en diagonale.

##Comment jouer
Pour jouer au Morpion, il suffit d'exécuter le fichier application.rb dans un terminal :

Copy code
ruby application.rb
Le programme affichera les instructions pour créer les deux joueurs, puis pour commencer le jeu. Les joueurs choisissent les coordonnées de la case où ils veulent placer leur symbole, en entrant une lettre (a, b ou c) suivie d'un nombre (1, 2 ou 3). Par exemple, pour placer un symbole dans la case en haut à droite, le joueur doit entrer c1.

Le programme vérifie si le coup est valide (la case est vide et les coordonnées sont valides), puis affiche le plateau mis à jour. Le jeu continue jusqu'à ce qu'un joueur gagne ou que toutes les cases soient remplies.

Classes
Le programme utilise plusieurs classes pour représenter les éléments du jeu :

Player : représente un joueur, avec un nom et un symbole (X ou O).
Board : représente le plateau de jeu, avec neuf cases (objets de la classe BoardCase).
BoardCase : représente une case sur le plateau, avec une valeur (X, O ou vide).
Show : contient des méthodes pour afficher le plateau de jeu et les messages à l'utilisateur.
Game : gère le déroulement du jeu, en vérifiant les coups valides et en déterminant le gagnant.
Fonctionnalités à ajouter
Ce programme peut être amélioré de plusieurs façons :

Ajouter une fonctionnalité pour permettre aux joueurs de choisir la taille du plateau (par exemple, 4x4 ou 5x5).
Ajouter une fonctionnalité pour permettre aux joueurs de jouer contre un ordinateur (en utilisant une IA simple).
Ajouter une fonctionnalité pour enregistrer les scores des joueurs sur plusieurs parties.
Auteur
Ce programme a été créé par MDFLAMorANGELS.
