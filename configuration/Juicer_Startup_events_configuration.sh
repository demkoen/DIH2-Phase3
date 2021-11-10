curl -iX POST \
  'http://10.11.118.60:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: eventService' \
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
  -H 'fiware-service: eventService' \
  -H 'fiware-servicepath: /eventMessages' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_feeder",
     "entity_name": "events",
     "entity_type": "eventsValues",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "uid", "name": "uid", "type": "int" },
       { "object_id": "isActive", "name": "isActive", "type": "Boolean" },
       { "object_id": "lastChangeTime", "name": "lastChangeTime", "type": "DateTime" },
       { "object_id": "description", "name": "description", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://10.11.118.60:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: eventService' \
  -H 'fiware-servicepath: /eventMessages' \
  -d '{
 "devices": [
   {
     "device_id":   "Sugar_solution_tank",
     "entity_name": "events",
     "entity_type": "eventsValues",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "uid", "name": "uid", "type": "int" },
       { "object_id": "isActive", "name": "isActive", "type": "Boolean" },
       { "object_id": "lastChangeTime", "name": "lastChangeTime", "type": "DateTime" },
       { "object_id": "description", "name": "description", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://10.11.118.60:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: eventService' \
  -H 'fiware-servicepath: /eventMessages' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_mixer",
     "entity_name": "events",
     "entity_type": "eventsValues",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "uid", "name": "uid", "type": "int" },
       { "object_id": "isActive", "name": "isActive", "type": "Boolean" },
       { "object_id": "lastChangeTime", "name": "lastChangeTime", "type": "DateTime" },
       { "object_id": "description", "name": "description", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://10.11.118.60:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: eventService' \
  -H 'fiware-servicepath: /eventMessages' \
  -d '{
 "devices": [
   {
     "device_id":   "Vitamine_C_feeder_tank",
     "entity_name": "events",
     "entity_type": "eventsValues",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "uid", "name": "uid", "type": "int" },
       { "object_id": "isActive", "name": "isActive", "type": "Boolean" },
       { "object_id": "lastChangeTime", "name": "lastChangeTime", "type": "DateTime" },
       { "object_id": "description", "name": "description", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://10.11.118.60:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: eventService' \
  -H 'fiware-servicepath: /eventMessages' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_transfer_line",
     "entity_name": "events",
     "entity_type": "eventsValues",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "uid", "name": "uid", "type": "int" },
       { "object_id": "isActive", "name": "isActive", "type": "Boolean" },
       { "object_id": "lastChangeTime", "name": "lastChangeTime", "type": "DateTime" },
       { "object_id": "description", "name": "description", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://10.11.118.60:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: eventService' \
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
        "uid", "isActive", "commandKey", "lastChangeTime", "description"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "uid", "isActive", "commandKey", "lastChangeTime", "description"
    ],
    "metadata": ["dateCreated", "dateModified"]
  }
}'

sleep 0.5

#!/bin/bash
echo "Press any key to continue"
while [ true ] ; do
read -t 1 -n 1
if [ $? = 0 ] ; then
exit ;
fi
done