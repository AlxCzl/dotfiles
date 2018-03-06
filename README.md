# Mes dotfiles

Voici la sauvegarde de mes dotfiles (compatibles avec les PC EPITA).

## Utilisation

Pour utiliser mes dotfiles, il vous suffit d'utiliser le script suivant  :

```
$ .confs/install.sh <VOTRE-HOME>
```
**ATTENTION** utilisez le parametre \<VOTRE-HOME\> uniquement si vous n'êtes pas
sur un pc de l'EPITA: en effet, le script utilise la variable d'environnement
$AFS\_DIR et, si elle est vide, les symlinks ne seront pas bons !!

Vous pouvez aussi restaurez cette config en creeant des symlinks manuellement.

## Contenu

Ces dotfiles contiennent des configs pour :

* i3wm
* i3lock
* urxvt
* bash

et bien d'autres
