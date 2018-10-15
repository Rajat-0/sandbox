kubectl create   -f ./kube_svc_cygnus_sth.yaml
kubectl create  -f ./kube_cygnus_sth.yaml
echo "+++++++++++++++++ waiting for cygnus-sth to come up ++++++++++++++++++++++++"
sleep 25
echo "+++++++++++++++++++  cygnus-sth deployed ++++++++++++++++++++++++++++++++"
