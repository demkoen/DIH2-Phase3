curl -iX POST \
  'http://10.11.118.60:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: events' \
  -H 'fiware-servicepath: /eventMessages' \
  -d '{
 "services": [
   {
     "apikey":      "events",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "events/"
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://10.11.118.60:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: events' \
  -H 'fiware-servicepath: /eventMessages' \
  -d '{
 "devices": [
   {
     "device_id":   "",
     "entity_name": "events",
     "entity_type": "eventsValues",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "uid", "name": "uid", "type": "Text" },
       { "object_id": "isActive", "name": "isActive", "type": "Text" },
       { "object_id": "lastChangeTime", "name": "lastChangeTime", "type": "DateTime" },
       { "object_id": "description", "name": "description", "type": "Text" },
       { "object_id": "arguments", "name": "arguments", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5


sleep 0.5

curl -iX POST \
  'http://10.11.118.60:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: events' \
  -H 'fiware-servicepath: /eventMessages' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "events"
      }
    ],
    "condition": {
      "attrs": [
        "uid", "isActive", "commandKey", "lastChangeTime", "elemdescriptionentType", "arguments"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "uid", "isActive", "commandKey", "lastChangeTime", "elemdescriptionentType", "arguments"
    ],
    "metadata": ["dateCreated", "dateModified"]
  }
}'

sleep 0.5

pause