echo "$1"
echo "$2"
echo "$3"

curl -iX POST 'http://'$1':30389/ngsi10/updateContext' -H 'Content-Type: application/json' -d '{"contextElements": [{"entityId": {"id": '$2', "type": "Rule", "isPattern": false}, "attributes": [{"name": "threshold", "type": "integer", "contextValue": '$3'}]}], "updateAction": "UPDATE"}'
