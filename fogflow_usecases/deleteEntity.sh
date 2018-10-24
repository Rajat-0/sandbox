curl -iX POST \
  'http://192.168.20.86:30389/ngsi10/updateContext' \
  -H 'Content-Type: application/json' \
  -d '
{
"contextElements": [
{
"entityId": {
"id": "Stream.Rule.02",
"type": "Rule",
"isPattern": false
}
}
],
"updateAction": "DELETE"
}'
