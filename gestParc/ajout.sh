#!/bin/bash

read -p "Entrer un nom : " nom
read -p "Entrer une adresse Mac : " adMac
read -p "Entrer une adresse IP : " adIp
read -p "Entrer un masque (CIDR): " CIDR
read -p "Le type (1=machine;2=switch;3=serveur) : " type

echo "Vérification des éléments entrés"


if [[ "$adMac" =~ ^([0-9A-Fa-f]{2}[:.-]){5}[0-9A-Fa-f]{2}$ ]]
then
    echo "Adresse MAC valide"
else
    echo "Adresse MAC invalide, veuillez réessayer !!!"
    exit
fi


if [[ "$adIp" =~ ^((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\.){3}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])$ ]]
then
    echo "L'adresse IP est bonne"
else
    echo "Ce n'est pas une adresse IP, veuillez réessayer !!!"
    exit
fi

if [[ "$CIDR" =~ ^([12]?[0-9]|3[0-2])$ ]]
then
    echo "CIDR est bon"
else
    echo "CIDR n'est pas bon, veuillez réessayer !!!"
    exit
fi

echo "Envoi de l'ajout :"
sudo mysql mygest -e "INSERT INTO Equipement (nom, adMac, adIp, CIDR, idT) VALUES ('$nom','$adMac','$adIp','$CIDR','$type');"
echo "Ajout terminé"
