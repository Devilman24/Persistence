# Persistence

## Utilisation de base

1. Rendez le script exécutable : 
   ```bash
   
   chmod +x .boom.sh

Exécutez le script avec des privilèges superutilisateur :
    ```bash
    
    sudo ./boom.sh

Techniques avancées pour une exécution discrète
1. Exécution en arrière-plan

Pour exécuter le script en mode "daemon" (en arrière-plan), utilisez :
    ```bash
    
    nohup /path/to/.boom.sh &
Cela détache le script de votre terminal.


2. Réduire l'impact sur le système

Utilisez nice pour attribuer une priorité basse au processus :
        ```bash
    
            nohup nice -n 19 /path/to/.boom.sh &
Cela limite l'utilisation des ressources système par le script.

3. Masquer la sortie du script

Pour empêcher les journaux d'apparaître, redirigez la sortie vers /dev/null :
        ```bash
    
            nohup /path/to/.boom.sh > /dev/null 2>&1 &
    
4. Automatisation au démarrage

Pour garantir que le script persiste après un redémarrage, ajoutez-le au fichier rc.local (si pris en charge) :

Ouvrez le fichier :
    ```bash

    sudo nano /etc/rc.local

Ajoutez cette ligne avant exit 0 :
    ```bash

    /path/to/.boom.sh &

5. Planification avec cron

Vous pouvez également planifier l'exécution via le planificateur cron :

Ouvrez l'éditeur de tâches cron :
        ```bash

        crontab -e

Ajoutez une ligne pour exécuter le script au démarrage :
        ```bash

            @reboot /path/to/.boom.sh > /dev/null 2>&1 &

6. Masquage du script

Pour rendre votre script plus discret :

Renommez-le avec un nom non suspect (ex. .sys_update ou .service).

Déplacez-le dans un répertoire caché, par exemple :
    ```bash

        mv .boom.sh ~/.config/.sys_update

7. Exécution conditionnelle

Ajoutez des conditions pour que le script s'exécute uniquement dans certaines situations :
```bash

if [ "$(whoami)" == "root" ]; then
    nohup /path/to/.boom.sh > /dev/null 2>&1 &
fi

