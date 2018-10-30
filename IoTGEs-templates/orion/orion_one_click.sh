echo "++++++++++orion cleanup done+++++++++++"
mkdir -p  /opt/data/vol/{0..2}
kubectl create  configmap wrapper --from-file=./kube-mongo-statefulset.sh
kubectl create  -f ./volume1.yaml
kubectl create  -f ./volume2.yaml
kubectl create  -f ./volume3.yaml
kubectl create  -f ./kube_mongo_client_svc.yaml
kubectl create -f ./kube_svc_orion.yaml
sleep 50
kubectl create -f ./mongo-statefulset.yaml
echo "======waiting 100 sec for statefulset to deploy===="
sleep 120
echo "setting up mongodb in HA"
kubectl	exec  -it mongo-0 /opt/kube-mongo-statefulset.sh
echo "waiting 30 sec for HA to complete"
sleep 50
echo "waiting for HA to complete"
echo "waiting for HA to complete 20 sec"
sleep 30
kubectl create -f ./kube_orion_depoyment.yaml
sleep 30
echo "++++++++++orion oneclick soln completed+++++++++++"

