echo "$1"
echo "$2"
echo "$3"
echo "$4"
echo "$5"
echo "$6"


curl -iX POST 'http://'$1':30389/ngsi10/updateContext' -H 'Content-Type: application/json' -d '{"contextElements": [{"entityId": {"id": '$2', "type": "City", "isPattern": false}, "attributes": [{"name": "PM10", "type": "integer", "contextValue": '$3'},{"name": "PM25", "type": "integer", "contextValue": '$4'}], "domainMetadata": [{"name": "location", "type": "point", "value": {"latitude": '$5', "longitude": '$6'}}]}],"updateAction": "UPDATE"}'
