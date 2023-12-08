#!/bin/bash

echo *
if [ $# -ne 3 ]
then
    echo "Il faut 3 arguments"
else
    case $1 in
    a) 
        if [ ! -d $1 ]
        then
            echo "Le premier argument doit être un dossier"
        else
            for i in s i l r $3
            do
                if [ -f $1/$2.$i ]
                then
                    echo $1/$2.$i "est un fichier"
                else
                    echo $1/$2.$i "n'est pas un fichier"
                fi
            done
        fi 
    ;;
    *)  
        fic=/tmp/$$
        echo -n $1 > $fic
        taille=$(cat $fic | wc -c)
        while [ $taille -lt $2 ]
        do
            taille=$(expr $taille + 1)
            cat $3 >> $fic
        done
        ls -l $fic
        cat $fic
        rm $fic
    ;;
    esac
fi