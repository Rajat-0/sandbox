kubectl delete  -f ./kube_mongo_client_svc.yaml
kubectl delete -f ./kube_svc_orion.yaml
kubectl delete -f ./mongo-statefulset.yaml
kubectl delete -f ./kube_orion_rc.yaml
kubectl delete  pvc db-mongo-0 db-mongo-1 db-mongo-2
kubectl delete pv mongo-pv0 mongo-pv1  mongo-pv2
kubectl delete  configmap wrapper
rm -rvf /opt/data/vol/*
echo "++++++++++orion cleanup done+++++++++++"
