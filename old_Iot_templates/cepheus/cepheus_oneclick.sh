kubectl create -f   ./cepheus_svc.yaml
kubectl create -f  ./cepheus_rc.yaml
echo "===================waiting for cepheus to come up ==================="
sleep 35
echo "========================= cepheus deploy completed ============================"
