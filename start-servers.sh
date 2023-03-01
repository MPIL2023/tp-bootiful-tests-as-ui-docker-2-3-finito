#!/bin/bash
echo
cd /home/work/tp-bootiful-tests-as-ui-docker-2-3-finito/finito && yarn ng serve --host 0.0.0.0 &
cp /home/work/tp-bootifultests---rest-api-1-3-finito/finitoApp/target/finitoApp-0.0.1-SNAPSHOT.jar /home/work/finitoApp-0.0.1-SNAPSHOT.jar
java -jar /home/work/finitoApp-0.0.1-SNAPSHOT.jar