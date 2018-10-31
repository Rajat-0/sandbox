echo "$1"
echo "$2"
echo "$3"
echo "$4"
echo "$5"

curl -iX POST 'http://'$1':8082/ngsi10/updateContext' -H 'Content-Type: application/json' -d '{"contextElements": [{"entityId": {"id": '$2', "type": "Requirement", "isPattern": false}, "attributes": [{"name": "output", "type": "string", "contextValue": "TemperatureAlarm"},{"name": "scheduler", "type": "string", "contextValue": "default"}, {"name": "restriction", "type": "object", "contextValue": {"scopes": [{"scopeType": "circle", "scopeValue": {"centerLatitude": '$3', "centerLongitude": '$4', "radius": '$5'}}]}}], "domainMetadata": [{"name": "topology", "type": "string", "value":"Topology.TemperatureCheck"}]}], "updateAction": "UPDATE"}'
