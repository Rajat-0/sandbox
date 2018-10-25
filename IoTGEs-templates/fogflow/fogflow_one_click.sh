echo "Creating rabbitmq service..."
kubectl create -f rabbitmq-service.yaml

echo "Creating postgis service..."
kubectl create -f postgis-service.yaml

echo "Creating discovery service..."
kubectl create -f discovery-service.yaml

echo "Creating broker service..."
kubectl create -f broker-service.yaml

echo "Creating designer service..."
kubectl create -f designer-service.yaml

echo "Creating master service..."
kubectl create -f master-service.yaml

echo "________________________________"

echo "Creating ConfigMaps..."
./config-map.sh

echo "________________________________"

echo "Deploying rabbitmq..."
kubectl create -f rabbitmq-deployment.yaml
sleep 30s

echo "Deploying postgis..."
kubectl create -f postgis-deployment.yaml
sleep 30s

echo "Deploying discovery..."
kubectl create -f discovery-deployment.yaml
sleep 30s

echo "Deploying broker..."
kubectl create -f broker-deployment.yaml
sleep 30s

echo "Deploying designer..."
kubectl create -f designer-deployment.yaml
sleep 30s

echo "Deploying master..."
kubectl create -f master-deployment.yaml
sleep 30s

echo "Deploying worker..."
kubectl create -f cloud-worker-deployment.yaml
sleep 30s


echo "Complete!"
