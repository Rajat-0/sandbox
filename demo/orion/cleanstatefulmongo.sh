kubectl delete statefulset mongo
kubectl delete  pvc db-mongo-0 db-mongo-1 db-mongo-2
kubectl delete pv mongo-pv0 mongo-pv1  mongo-pv2
cd /root/kube-tar/yadav
rm -rvf /opt/data/vol/*
mkdir  /opt/data/vol/{0..2}
kubectl create -f volume.yaml 
