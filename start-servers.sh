#!/bin/bash

# Lancement de server1 en arrière-plan
nohup cd /home/work/tp-bootifultests---rest-api-1-3-finito/finitoApp/target/ && java -jar finitoApp-0.0.1-SNAPSHOT.jar &

# Lancement de server2 en arrière-plan
nohup cd /home/work/tp-bootiful-tests-as-ui-docker-2-3-finito/finito && yarn ng serve &

# Attente infinie pour maintenir le conteneur en cours d'exécution
while true; do
  sleep 1000
done
