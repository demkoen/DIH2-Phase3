curl -iX POST \
  'http://10.11.118.60:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: ProceduralElementService' \
  -H 'fiware-servicepath: /proceduralElementStates' \
  -d '{
 "services": [
   {
     "apikey":      "ProceduralElements",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "ProceduralElements/"
   }
 ]
}'


curl -iX POST \
  'http://10.11.118.60:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: ProceduralElementService' \
  -H 'fiware-servicepath: /proceduralElementStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple juice procedure",
     "entity_name": "ProceduralElements",
     "entity_type": "proceduralElementStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "commandState", "name": "commandState", "type": "Text" },
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
  -H 'fiware-service: ProceduralElementService' \
  -H 'fiware-servicepath: /proceduralElementStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_Juice_mixing_unit_procedure",
     "entity_name": "ProceduralElements",
     "entity_type": "proceduralElementStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "commandState", "name": "commandState", "type": "Text" },
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
  -H 'fiware-service: ProceduralElementService' \
  -H 'fiware-servicepath: /proceduralElementStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_feed_operation",
     "entity_name": "ProceduralElements",
     "entity_type": "proceduralElementStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "commandState", "name": "commandState", "type": "Text" },
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
  -H 'fiware-service: ProceduralElementService' \
  -H 'fiware-servicepath: /proceduralElementStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Feed_sugar_solution_phase",
     "entity_name": "ProceduralElements",
     "entity_type": "proceduralElementStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "commandState", "name": "commandState", "type": "Text" },
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
  -H 'fiware-service: ProceduralElementService' \
  -H 'fiware-servicepath: /proceduralElementStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Feed_apple_juice_phase",
     "entity_name": "ProceduralElements",
     "entity_type": "proceduralElementStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "commandState", "name": "commandState", "type": "Text" },
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
  -H 'fiware-service: ProceduralElementService' \
  -H 'fiware-servicepath: /proceduralElementStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Agitate_apple_juice_phase",
     "entity_name": "ProceduralElements",
     "entity_type": "proceduralElementStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "commandState", "name": "commandState", "type": "Text" },
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
  -H 'fiware-service: ProceduralElementService' \
  -H 'fiware-servicepath: /proceduralElementStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_cooling_operation",
     "entity_name": "ProceduralElements",
     "entity_type": "proceduralElementStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "commandState", "name": "commandState", "type": "Text" },
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
  -H 'fiware-service: ProceduralElementService' \
  -H 'fiware-servicepath: /proceduralElementStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Cool_apple_juice_phase",
     "entity_name": "ProceduralElements",
     "entity_type": "proceduralElementStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "commandState", "name": "commandState", "type": "Text" },
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
  -H 'fiware-service: ProceduralElementService' \
  -H 'fiware-servicepath: /proceduralElementStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_transfer_operation",
     "entity_name": "ProceduralElements",
     "entity_type": "proceduralElementStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "commandState", "name": "commandState", "type": "Text" },
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
  -H 'fiware-service: ProceduralElementService' \
  -H 'fiware-servicepath: /proceduralElementStates' \
  -d '{
 "devices": [
   {
     "device_id":   "transfer_apple_juice_phase",
     "entity_name": "ProceduralElements",
     "entity_type": "proceduralElementStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "commandState", "name": "commandState", "type": "Text" },
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
  -H 'fiware-service: ProceduralElementService' \
  -H 'fiware-servicepath: /proceduralElementStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Vitamine_C_addition_unit_procedure",
     "entity_name": "ProceduralElements",
     "entity_type": "proceduralElementStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "commandState", "name": "commandState", "type": "Text" },
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
  -H 'fiware-service: ProceduralElementService' \
  -H 'fiware-servicepath: /proceduralElementStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Vitamine_C_addition_operation",
     "entity_name": "ProceduralElements",
     "entity_type": "proceduralElementStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "commandState", "name": "commandState", "type": "Text" },
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
  -H 'fiware-service: ProceduralElementService' \
  -H 'fiware-servicepath: /proceduralElementStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Add_vitamine_C_pahse",
     "entity_name": "ProceduralElements",
     "entity_type": "proceduralElementStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "commandState", "name": "commandState", "type": "Text" },
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
  -H 'fiware-service: ProceduralElementService' \
  -H 'fiware-servicepath: /proceduralElementStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Agitate_mixed_apple_juice_phase",
     "entity_name": "ProceduralElements",
     "entity_type": "proceduralElementStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "commandState", "name": "commandState", "type": "Text" },
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
  -H 'fiware-service: ProceduralElementService' \
  -H 'fiware-servicepath: /proceduralElementStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Mixed_apple_juice_cooling_operation",
     "entity_name": "ProceduralElements",
     "entity_type": "proceduralElementStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "commandState", "name": "commandState", "type": "Text" },
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
  -H 'fiware-service: ProceduralElementService' \
  -H 'fiware-servicepath: /proceduralElementStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Cool_mixed_apple_juice_phase",
     "entity_name": "ProceduralElements",
     "entity_type": "proceduralElementStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "commandState", "name": "commandState", "type": "Text" },
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
  -H 'fiware-service: ProceduralElementService' \
  -H 'fiware-servicepath: /proceduralElementStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Mixed_apple_juice_transfer_operation",
     "entity_name": "ProceduralElements",
     "entity_type": "proceduralElementStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "commandState", "name": "commandState", "type": "Text" },
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
  -H 'fiware-service: ProceduralElementService' \
  -H 'fiware-servicepath: /proceduralElementStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Transfer_mixed_apple_juice_phase",
     "entity_name": "ProceduralElements",
     "entity_type": "proceduralElementStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "commandState", "name": "commandState", "type": "Text" },
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
  -H 'fiware-service: ProceduralElementService' \
  -H 'fiware-servicepath: /proceduralElementStates' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "ProceduralElements"
      }
    ],
    "condition": {
      "attrs": [
        "commandState", "stateChangeTime", "commandKey", "caller", "elementType", "result", "duration", "contextId", "executer", "treepath"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "commandState", "stateChangeTime", "commandKey", "caller", "elementType", "result", "duration", "contextId", "executer", "treepath"
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