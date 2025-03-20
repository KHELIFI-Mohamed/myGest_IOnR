#!/bin/bash

echo "entrer une adress ip à ping:  "
read IP
if [[ "$IP" =~ ^((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\.){3}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])$ ]]
then
   echo "L'adresse IP est bonne"
   echo "Envoie de la requête ICMP..."
   if ping -c3  $IP >/dev/null
   then
    echo "L'adress IP reçois les pings."
    else
    echo "l'adress IP ne répond pas au ping."
    fi

else
    echo "Ce n'est pas une adresse IP"
fi
