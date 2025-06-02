#!/bin/bash

# Vérifie si l'utilisateur est root
if [ "$EUID" -ne 0 ]; then
  echo "❌ Veuillez exécuter en tant que root"
  exit 1
fi

# Boucle infinie optimisée
while true; do
  echo "<name>" > /root/king.txt
  chmod 600 /root/king.txt
  sleep 5
done
