# Creo el servicio y el port-forward

kubectl create -f mariadb-secretes/mariadb.yaml

sleep 5

bash mariadb-secretes/forward-pod-mariadb.sh

#populo la base

apt -y install mysql-client-core-5.7

#Creo el frontend

bash comandos-k8s.sh

sleep 5

mysql -uroot -pmaster -h 127.0.0.1 < db.sql
