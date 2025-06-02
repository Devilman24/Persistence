# Persistence

utilisation:

    ~$ chmod +x .boom.sh
    ~$ sudo ./.boom.sh

Si vous voulez un script encore plus discret :

    Exécution en arrière-plan :
    Vous pouvez exécuter le script en mode "daemon" pour qu’il s’exécute discrètement :

        nohup /path/to/.boom.sh &

Cela détache le script de votre terminal.

Ajouter une priorité basse (nice) :
Pour réduire l'impact sur le système :

        nohup nice -n 19 /path/to/.boom.sh &

Cela attribue au processus une priorité basse.

Masquer la sortie du script :
Redirigez la sortie vers /dev/null pour éviter qu'elle ne soit visible :

        nohup /path/to/.boom.sh > /dev/null 2>&1 &
