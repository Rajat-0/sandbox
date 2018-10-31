echo "$1"
echo "$2"
echo "$3"
echo "$4"
echo "$5"
echo "$6"
echo "$7"


curl -iX POST 'http://'$1':8082/ngsi10/updateContext' -H 'Content-Type: application/json' -d '{"contextElements": [{"entityId": {"id": '$2', "type": "Temperature", "isPattern": false}, "attributes": [{"name": "currentTemperature", "type": "float", "contextValue": '$3'}, {"name": "deviceId", "type": "string", "contextValue": '$4'}], "domainMetadata": [{"name": "floor", "type": "string", "value": '$5'}, {"name": "location", "type": "point", "value": {"latitude": '$6', "longitude": '$7'}}]}], "updateAction": "UPDATE"}'
