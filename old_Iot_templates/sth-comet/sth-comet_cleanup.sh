kubectl delete   -f ./kube_svc_mongo2.yaml
kubectl delete  -f ./kube_sth_mongo2_rc.yaml
#echo "+++++++++++++++++ creating database for sth-comet ++++++++++++++++++"
#sleep 20
kubectl delete -f  ./fiware-sth2-comet-service.yaml
kubectl delete -f  ./fiware-sth2-comet-deployment.yaml

#echo "+++++++++++++++++ waiting for sth-comet to come up ++++++++++++++++++++++++"
#sleep 25
echo "+++++++++++++++++++  sth-comet cleaned up ++++++++++++++++++++++++++++++++"
