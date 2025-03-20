#!/bin/bash

longueur=8
if [ ! -z "$1" ]; then
    longueur=$1
fi
passwd=$(< /dev/urandom tr -dc 'A-Za-z0-9_@#$%&*' | head -c $longueur)
echo "Mot de passe généré : $passwd"

 