#!/bin/bash

ping -c3 8.8.8.8 &> /dev/null

if [ $? -eq 0 ]; then
    echo " Internet est disponible"
else
    echo "Pas de connexion Internet"
fi
