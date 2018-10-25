kubectl create configmap discovery-configmap --from-file=/tmp/IotGEs/config/fogflow/discovery/config.json
kubectl create configmap broker-configmap --from-file=/tmp/IotGEs/config/fogflow/broker/config.json
kubectl create configmap designer-configmap --from-file=/tmp/IotGEs/config/fogflow/designer/config.json
kubectl create configmap master-configmap --from-file=/tmp/IotGEs/config/fogflow/master/config.json
kubectl create configmap cloud-worker-configmap --from-file=/tmp/IotGEs/config/fogflow/cloud-worker/config.json

