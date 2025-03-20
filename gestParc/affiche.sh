#!/bin/bash

echo "BASE DE DONNEES" |figlet |lolcat
echo "tapez 1 pour voir l'ensemble de la base de données: "
echo "tapez 2 pour voir uniquement les machines : "
echo "tapez 3 pour voir uniquement les switchs : "
echo "tapez 4 pour voir uniquement les serveurs : "
read a

if [[ a -eq 1 ]]
then
    sudo mysql mygest -e "SELECT * FROM Equipement";
elif [[ a -eq 2 ]]
then
    sudo mysql  mygest -e "SELECT * FROM Equipement WHERE id = 1";
elif [[ a -eq 3 ]]
then
    sudo mysql  mygest -e "SELECT * FROM Equipement WHERE id = 2";
elif [[ a -eq 4 ]]
then
    sudo mysql  mygest -e "SELECT * FROM Equipement WHERE id = 3";
else
    echo "erreur"|figlet
fi

