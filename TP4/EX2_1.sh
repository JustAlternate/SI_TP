#!/bin/bash

if [ $# -ge 1 ]
then
    if [ -f $1 ] 
    then
        echo $1 " existe"

        if [ -d $1 ]
        then
            echo $1 " est un dossier"
        else
            echo $1 " est un fichier"
        fi

        if [ -r $1 ]
        then
            echo $1 " a le droit de lecture"
        else
            echo $1 " n'a pas le droit de lecture"
        fi

        if [ -w $1 ]
        then
            echo $1 " a le droit d'écriture"
        else
            echo $1 " n'a pas le droit d'écriture"
        fi

        if [ -x $1 ]
        then
            echo $1 " a le droit d'exécution"
        else
            echo $1 " n'a pas le droit d'exécution"
        fi
    else
        echo $1 " n'existe pas"
    fi
else
    echo "Il faut un fichier en argument"
fi