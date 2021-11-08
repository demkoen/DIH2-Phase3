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
     "device_id":   "Recover_physical_stage",
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
       { "object_id": "executer", "name": "executer", "type": "Text" }
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
     "device_id":   "Move_to_release",
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
       { "object_id": "executer", "name": "executer", "type": "Text" }
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
     "device_id":   "Enable_stage_mover",
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
       { "object_id": "executer", "name": "executer", "type": "Text" }
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
     "device_id":   "Move_to_stage",
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
       { "object_id": "executer", "name": "executer", "type": "Text" }
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
     "device_id":   "AxisMoveAbsolute",
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
       { "object_id": "executer", "name": "executer", "type": "Text" }
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
     "device_id":   "CMD_Feed_Material",
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
       { "object_id": "executer", "name": "executer", "type": "Text" }
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
     "device_id":   "Move_to_grip",
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
       { "object_id": "executer", "name": "executer", "type": "Text" }
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
     "device_id":   "Disable_stage_mover",
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
       { "object_id": "executer", "name": "executer", "type": "Text" }
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
     "device_id":   "acquire_Length_Measurement",
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
       { "object_id": "executer", "name": "executer", "type": "Text" }
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
        "commandState", "commandKey", "caller", "elementType", "result", "duration", "contextId", "executer"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "commandState", "commandKey", "caller", "elementType", "result", "duration", "contextId", "executer"
    ],
    "metadata": ["dateCreated", "dateModified"]
  },
}'

sleep 0.5
