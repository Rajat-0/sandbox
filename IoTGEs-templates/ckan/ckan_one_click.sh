echo "++++++++++ ckan install starting+++++++++++"

kubectl create  -f ./volume1.yaml
kubectl create  -f ./volume2.yaml
kubectl create  -f ./volume3.yaml
kubectl create  -f ./redis-service.yaml
kubectl create -f ./redis-deployment.yaml
kubectl create  -f ./solr-service.yaml
kubectl create -f ./solr-deployment.yaml
echo "======waiting 60 sec ===="
sleep 60
kubectl create  -f ./db-service.yaml
kubectl create -f ./db-deployment.yaml
echo "======waiting 60 sec ===="
sleep 100
kubectl create  -f ./datapusher-service.yaml
kubectl create -f ./datapusher-deployment.yaml
echo "======waiting 60 sec ===="
sleep 80
kubectl create  -f ./ckan-service.yaml
kubectl create -f ./ckan-deployment.yaml

sleep 140
echo "++++++++++ckan oneclick soln completed+++++++++++"
