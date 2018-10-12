echo "++++++++++orion cleanup done+++++++++++"
mkdir -p  /opt/data/vol/{0..2}
kubectl create  configmap wrapper --from-file=./kube-mongo-statefulset.sh
kubectl create  -f ./volume.yaml
kubectl create  -f ./kube_mongo_client_svc.yaml
kubectl create -f ./kube_svc_orion.yaml
sleep 10
kubectl create -f ./mongo-statefulset.yaml
echo "======waiting 45 sec for statefulset to deploy===="
sleep 20
echo "setting up mongodb in HA"
kubectl	exec  -it mongo-0 /opt/kube-mongo-statefulset.sh
echo "waiting for HA to complete"
sleep 20
echo "waiting for HA to complete"
echo "waiting for HA to complete 20 sec"
sleep 10
kubectl create -f ./kube_orion_rc.yaml
sleep 10
echo "++++++++++orion oneclick soln completed+++++++++++"
echo "=================checking if orion is up and running======================"
curl 180.179.214.207:32101/version
echo "======================================="
