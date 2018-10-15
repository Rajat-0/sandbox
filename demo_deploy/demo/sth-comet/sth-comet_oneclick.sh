kubectl create   -f ./kube_svc_mongo2.yaml
kubectl create  -f ./kube_sth_mongo2_rc.yaml
echo "+++++++++++++++++ creating database for sth-comet ++++++++++++++++++"
sleep 20
kubectl create -f  ./fiware-sth2-comet-service.yaml
kubectl create -f  ./fiware-sth2-comet-deployment.yaml

echo "+++++++++++++++++ waiting for sth-comet to come up ++++++++++++++++++++++++"
sleep 25
echo "+++++++++++++++++++  sth-comet deployed ++++++++++++++++++++++++++++++++"
