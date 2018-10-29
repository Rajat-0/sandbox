echo "++++++++++ ckan cleanup starting+++++++++++"
kubectl delete   -f ./ckan-service.yaml
kubectl delete  -f ./ckan-deployment.yaml
kubectl delete   -f ./datapusher-service.yaml
kubectl delete  -f ./datapusher-deployment.yaml
kubectl delete   -f ./db-service.yaml
kubectl delete  -f ./db-deployment.yaml
kubectl delete   -f ./solr-service.yaml
kubectl delete  -f ./solr-deployment.yaml
kubectl delete   -f ./redis-service.yaml
kubectl delete  -f ./redis-deployment.yaml
kubectl delete   -f ./volume1.yaml
kubectl delete   -f ./volume2.yaml
kubectl delete   -f ./volume3.yaml
rm -rvf /ckan/pgdata/*
rm -rvf /ckan/ckanconfig/*
rm -rvf /ckan/db/*
echo "++++++++++ckan oneclick ckan cleanup completed+++++++++++"
