echo ">> Update request for Temperature of a floor <<"

read -a VAR1 -p "master-ip: "
echo var1=$VAR1

read -a VAR2 -p "entity_id for type Temperature:"
echo var2=$VAR2

read -a VAR3 -p "Current Temperature: "
echo var3=$VAR3

read -a VAR4 -p "Device_id: "
echo var4=$VAR4

read -a VAR5 -p "Floor_id: "
echo var5=$VAR5

read -a VAR6 -p "latitude: "
echo var6=$VAR6

read -a VAR7 -p "longitude: "
echo var7=$VAR7


curl -iX POST 'http://'$VAR1':30389/ngsi10/updateContext' -H 'Content-Type: application/json' -d '{"contextElements": [{"entityId": {"id": '$VAR2', "type": "Temperature", "isPattern": false}, "attributes": [{"name": "currentTemperature", "type": "float", "contextValue": '$VAR3'}, {"name": "deviceId", "type": "string", "contextValue": '$VAR4'}], "domainMetadata": [{"name": "floor", "type": "string", "value": '$VAR5'}, {"name": "location", "type": "point", "value": {"latitude": '$VAR6', "longitude": '$VAR7'}}]}], "updateAction": "UPDATE"}'
