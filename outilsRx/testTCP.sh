#!/bin/bash

echo "Entrez une adresse IP : "
read IP
echo "Entrez un port : "
read Port
if [[ "$IP" =~ ^((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\.){3}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])$ ]]
then
    nmap $IP -p $Port  
else
    echo "adresse IP invalide "
fi