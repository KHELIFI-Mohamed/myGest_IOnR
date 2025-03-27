MyGest-IOn est un programme conçu pour simplifier le travail des techniciens systèmes et réseaux. Le projet est divisé en trois grandes parties : la gestion du parc informatique, des outils réseau, et une section d'installation.

Structure du projet

1. Gestion du Parc Informatique  
   Cette section permet de gérer les équipements présents dans le parc informatique à l'aide d'une base de données. Elle permet de consulter, ajouter, modifier et supprimer des éléments dans la base de données, facilitant ainsi la gestion des équipements par les techniciens.

   - **Consulter** : Permet à l'utilisateur de consulter les données présentes dans la base de données de manière rapide et optimisée.
   - **Ajouter** : Permet d'ajouter de nouveaux équipements dans la base de données.
   - Modifier : Permet de modifier les données des équipements existants.
   - Supprimer : Permet de supprimer les équipements de la base de données.

2. Outils Réseaux  
   Cette section comprend plusieurs outils pour effectuer des tests et des vérifications réseau.

   - **TestIP** : Permet de tester la validité d'une adresse IP et d'effectuer un test de ping pour vérifier sa connectivité.
   - **TestTCP** : Permet de tester si un port spécifique sur une adresse IP est ouvert ou non.
   - Générer un fichier .txt depuis la BDD : Permet de générer un fichier .txt à partir des données présentes dans la base de données.
   - Consulter les IP actives : Teste les adresses IP des machines renseignées dans la BDD et affiche les machines actives en vert et les machines inactives en rouge.

3. Install
   Cette partie permet de concevoir une solution qui, lors du premier lancement du programme, effectue les configurations nécessaires pour son bon fonctionnement, que ce soit sur un poste client ou un serveur.

Fonctionnalités supplémentaires

- **Test de connectivité WAN**: Un script Bash permettant de tester la connectivité vers le WAN.
- **Génération de mots de passe sécurisés** : Un autre script génère des mots de passe aléatoires et sécurisés, pratique pour la création de nouvelles sessions.

 1.Consulter 
[consulter](https://github.com/KHELIFI-Mohamed/myGest_IOnR/blob/main/gestParc/affiche.sh)

Ce script Bash permet à l'utilisateur de consulter différents types d'équipements dans la base de données. Il offre les options suivantes :
- Voir l'ensemble des équipements.
- Voir uniquement les machines.
- Voir uniquement les switchs.
- Voir uniquement les serveurs.

Le script exécute une requête MySQL en fonction du choix de l'utilisateur et affiche les équipements correspondants. En cas d'entrée invalide, un message d'erreur s'affiche.

 2. Ajouter
(https://github.com/KHELIFI-Mohamed/myGest_IOnR/blob/main/gestParc/ajout.sh)

Ce script permet à l'utilisateur d'ajouter des équipements réseau à la base de données. Il guide l'utilisateur pour saisir les informations suivantes :
- Nom de l'équipement.
- Adresse MAC.
- Adresse IP.
- Masque CIDR.
- Type d'équipement (Machine, Switch, Serveur).

Le script vérifie la validité des données saisies avant de les insérer dans la base de données.

 3. TestIP  
(https://github.com/KHELIFI-Mohamed/myGest_IOnR/blob/main/outilsRx/testIP.sh)

Ce script permet de tester la validité d'une adresse IP et d'effectuer un test de connectivité via un ping.  
Il vérifie d'abord si l'adresse IP saisie est valide, puis envoie un ping à l'adresse pour tester la connectivité.

4.TestTCP 
(https://github.com/KHELIFI-Mohamed/myGest_IOnR/blob/main/outilsRx/testTCP.sh)

Ce script permet de tester si un port spécifique sur une adresse IP est ouvert ou fermé.  
L'utilisateur entre l'adresse IP et le numéro de port, et le script effectue un scan avec nmap pour vérifier l'état du port.

5.TestInternet
(https://github.com/KHELIFI-Mohamed/myGest_IOnR/blob/main/outilsRx/testinternet.sh)

Ce script teste si l'ordinateur est connecté à Internet en envoyant des pings à 8.8.8.8 (serveur DNS de Google).  
Il affiche "Internet est disponible" si le ping réussit, ou "Pas de connexion Internet" en cas d'échec.

6.Mot de Passe
(https://github.com/KHELIFI-Mohamed/myGest_IOnR/blob/main/outilsRx/passwd.sh)

Ce script génère un mot de passe aléatoire sécurisé.  
Il utilise des caractères générés de manière aléatoire via /dev/urandom et filtre pour ne conserver que les lettres, chiffres et symboles spéciaux.

**PS**:Si vous préférez regarder une vidéo , allez sur le fichier mygest.mp4 et cliquer sur view raw pour la télécharger et la regarder.
