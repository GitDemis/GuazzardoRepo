kubectl create deployment demis --image=mguazzardo/miphp:v2
#kubectl expose deployment demis --port=80 --type=NodePort
kubectl create -f servicio-fijo.yaml

