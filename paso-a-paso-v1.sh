# Creo el servicio y el port-forward
kubectl create ns base
kubens base

kubectl create -f mariadb.yaml

sleep 10

#bash mariadb-secretes/forward-pod-mariadb.sh

sleep 10 && echo "espere mientras populamos"

#populo la base

apt -y install mysql-client-core-5.7

#Creo el frontend

#Para eks, acordarse de cambiar el NodePort por LoadBalancer
# <ip>/page.php

bash comandos-k8s.sh

sleep 10

bash mariadb-secretes/forward-pod-mariadb.sh


mysql -uroot -pmaster -h 127.0.0.1 < db.sql

kubectl get svc
