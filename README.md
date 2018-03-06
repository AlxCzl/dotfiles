# Mes dotfiles

Voici la sauvegarde de mes dotfiles (compatibles avec les PC EPITA).

## Installation

Pour installer mes dotfiles, il vous suffit d'utiliser le script suivant  :

**ATTENTION** Le script va sauvegarder vos dotfiles dans le dossier .confs/backup, qu'il créera automatiquement.
Les symlinks en revanche seront **supprimés**; soyez __vigilants !__ !

```
$ .confs/install.sh
```

Si vous n'utilisez pas le programme _afs_, le script va utiliser la variable d'environnement **$HOME**.
Si cette dernière n'est pas set, veuillez renseigner le chemin jusqu'à votre répertoire /home comme cela :
```
$ .confs/install.sh <VOTRE-HOME>
```

Vous pouvez aussi restaurez cette config en créeant des symlinks manuellement.

## Contenu

Ces dotfiles contiennent des configs pour :

* i3wm
* i3lock
* urxvt
* bash

et bien d'autres
