curl -iX POST \
  'http://10.11.118.60:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: commandStateService' \
  -H 'fiware-servicepath: /commandStates' \
  -d '{
 "services": [
   {
     "apikey":      "commands",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "commands/"
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://10.11.118.60:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: commandStateService' \
  -H 'fiware-servicepath: /commandStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Recover%20physical%20stage",
     "entity_name": "commands",
     "entity_type": "commandStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "Completed", "name": "Completed", "type": "Text" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "commandKey", "name": "commandKey", "type": "Text" },
       { "object_id": "caller", "name": "caller", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "Text" },
       { "object_id": "result", "name": "result", "type": "int" },
       { "object_id": "duration", "name": "duration", "type": "int" },
       { "object_id": "contextId", "name": "contextId", "type": "Text" },
       { "object_id": "executer", "name": "executer", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://10.11.118.60:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: commandStateService' \
  -H 'fiware-servicepath: /commandStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Disable",
     "entity_name": "commands",
     "entity_type": "commandStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "Completed", "name": "Completed", "type": "Text" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "commandKey", "name": "commandKey", "type": "Text" },
       { "object_id": "caller", "name": "caller", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "Text" },
       { "object_id": "result", "name": "result", "type": "int" },
       { "object_id": "duration", "name": "duration", "type": "int" },
       { "object_id": "contextId", "name": "contextId", "type": "Text" },
       { "object_id": "executer", "name": "executer", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://10.11.118.60:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: commandStateService' \
  -H 'fiware-servicepath: /commandStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Enable",
     "entity_name": "commands",
     "entity_type": "commandStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "Completed", "name": "Completed", "type": "Text" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "commandKey", "name": "commandKey", "type": "Text" },
       { "object_id": "caller", "name": "caller", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "Text" },
       { "object_id": "result", "name": "result", "type": "int" },
       { "object_id": "duration", "name": "duration", "type": "int" },
       { "object_id": "contextId", "name": "contextId", "type": "Text" },
       { "object_id": "executer", "name": "executer", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://10.11.118.60:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: commandStateService' \
  -H 'fiware-servicepath: /commandStates' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "commands"
      }
    ],
    "condition": {
      "attrs": [
        "commandState", "commandKey", "caller", "elementType", "result", "duration", "contextId", "executer", "treepath"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "commandState", "commandKey", "caller", "elementType", "result", "duration", "contextId", "executer", "treepath"
    ],
    "metadata": ["dateCreated", "dateModified"]
  }
}'

#!/bin/bash
echo "Press any key to continue"
while [ true ] ; do
read -t 1 -n 1
if [ $? = 0 ] ; then
exit ;
fi
done
