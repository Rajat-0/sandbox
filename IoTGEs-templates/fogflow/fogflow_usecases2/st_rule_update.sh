echo ">> Update request for Rule Input Stream for topology TemperatureCheck <<"

read -a VAR1 -p "master-ip: "
echo var1=$VAR1

read -a VAR2 -p "entity_id for type Rule:"
echo var2=$VAR2

read -a VAR3 -p "New Temperature Threshold:"
echo var3=$VAR3

curl -iX POST 'http://'$VAR1':30389/ngsi10/updateContext' -H 'Content-Type: application/json' -d '{"contextElements": [{"entityId": {"id": '$VAR2', "type": "Rule", "isPattern": false}, "attributes": [{"name": "threshold", "type": "integer", "contextValue": '$VAR3'}]}], "updateAction": "UPDATE"}'
