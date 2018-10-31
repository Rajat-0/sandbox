echo ">> Update request for Requirement for topology TemperatureCheck <<"

read -a VAR1 -p "master-ip: "
echo var1=$VAR1

read -a VAR2 -p "entity_id for type Requirement:"
echo var2=$VAR2

read -a VAR3 -p "Center Latitude: "
echo var3=$VAR3

read -a VAR4 -p "Center Longitude: "
echo var4=$VAR4

read -a VAR5 -p "Radius: "
echo var5=$VAR5

curl -iX POST 'http://'$VAR1':8082/ngsi10/updateContext' -H 'Content-Type: application/json' -d '{"contextElements": [{"entityId": {"id": '$VAR2', "type": "City", "isPattern": false}, "attributes": [{"name": "PM10", "type": "integer", "contextValue": '$VAR3'},{"name": "PM25", "type": "integer", "contextValue": '$VAR4'}], "domainMetadata": [{"name": "location", "type": "point", "value": {"latitude": '$VAR5', "longitude": '$VAR6'}}]}],"updateAction": "UPDATE"}'
