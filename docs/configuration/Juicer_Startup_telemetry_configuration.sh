curl -iX POST \
  'http://192.168.178.101:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: Telemetry' \
  -H 'fiware-servicepath: /TelemetryValues' \
  -d '{
 "services": [
   {
     "apikey":      "Telemetry",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "Telemetry"
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: Telemetry' \
  -H 'fiware-servicepath: /TelemetryValues' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_mixing_tank",
     "entity_name": "Telemetry",
     "entity_type": "telemetryValues",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "treepath", "name": "treepath", "type": "Text" },
       { "object_id": "DateTime", "name": "DateTime", "type": "DateTime" },
       { "object_id": "name", "name": "name", "type": "Text" },
       { "object_id": "unit", "name": "unit", "type": "Text" },
       { "object_id": "schema", "name": "schema", "type": "Text" },
       { "object_id": "value", "name": "value", "type": "number" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: Telemetry' \
  -H 'fiware-servicepath: /TelemetryValues' \
  -d '{
 "devices": [
   {
     "device_id":   "Vitamine_C_mixing_tank",
     "entity_name": "Telemetry",
     "entity_type": "telemetryValues",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "treepath", "name": "treepath", "type": "Text" },
       { "object_id": "DateTime", "name": "DateTime", "type": "DateTime" },
       { "object_id": "name", "name": "name", "type": "Text" },
       { "object_id": "unit", "name": "unit", "type": "Text" },
       { "object_id": "schema", "name": "schema", "type": "Text" },
       { "object_id": "value", "name": "value", "type": "number" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" }
     ]
   }
 ]
}'

#### Commands ####

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: Telemetry' \
  -H 'fiware-servicepath: /TelemetryValues' \
  -d '{
 "devices": [
   {
     "device_id":   "Recover%20physical%20stage",
     "entity_name": "Telemetry",
     "entity_type": "telemetryValues",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "Completed", "name": "Completed", "type": "Text" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "commandKey", "name": "commandKey", "type": "Text" },
       { "object_id": "caller", "name": "caller", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
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
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: Telemetry' \
  -H 'fiware-servicepath: /TelemetryValues' \
  -d '{
 "devices": [
   {
     "device_id":   "Disable",
     "entity_name": "Telemetry",
     "entity_type": "telemetryValues",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "Completed", "name": "Completed", "type": "Text" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "commandKey", "name": "commandKey", "type": "Text" },
       { "object_id": "caller", "name": "caller", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
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
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: Telemetry' \
  -H 'fiware-servicepath: /TelemetryValues' \
  -d '{
 "devices": [
   {
     "device_id":   "Enable",
     "entity_name": "Telemetry",
     "entity_type": "telemetryValues",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "Completed", "name": "Completed", "type": "Text" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "commandKey", "name": "commandKey", "type": "Text" },
       { "object_id": "caller", "name": "caller", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "result", "name": "result", "type": "int" },
       { "object_id": "duration", "name": "duration", "type": "int" },
       { "object_id": "contextId", "name": "contextId", "type": "Text" },
       { "object_id": "executer", "name": "executer", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

#### Events ####

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: Telemetry' \
  -H 'fiware-servicepath: /TelemetryValues' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_feeder",
     "entity_name": "Telemetry",
     "entity_type": "telemetryValues",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "uid", "name": "uid", "type": "int" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "isActive", "name": "isActive", "type": "Boolean" },
       { "object_id": "lastChangeTime", "name": "lastChangeTime", "type": "DateTime" },
       { "object_id": "description", "name": "description", "type": "Text" },
       { "object_id": "severity", "name": "severity", "type": "int" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: Telemetry' \
  -H 'fiware-servicepath: /TelemetryValues' \
  -d '{
 "devices": [
   {
     "device_id":   "Sugar_solution_tank",
     "entity_name": "Telemetry",
     "entity_type": "telemetryValues",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "uid", "name": "uid", "type": "int" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "isActive", "name": "isActive", "type": "Boolean" },
       { "object_id": "lastChangeTime", "name": "lastChangeTime", "type": "DateTime" },
       { "object_id": "description", "name": "description", "type": "Text" },
       { "object_id": "severity", "name": "severity", "type": "int" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: Telemetry' \
  -H 'fiware-servicepath: /TelemetryValues' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_mixer",
     "entity_name": "Telemetry",
     "entity_type": "telemetryValues",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "uid", "name": "uid", "type": "int" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "isActive", "name": "isActive", "type": "Boolean" },
       { "object_id": "lastChangeTime", "name": "lastChangeTime", "type": "DateTime" },
       { "object_id": "description", "name": "description", "type": "Text" },
       { "object_id": "severity", "name": "severity", "type": "int" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: Telemetry' \
  -H 'fiware-servicepath: /TelemetryValues' \
  -d '{
 "devices": [
   {
     "device_id":   "Vitamine_C_feeder_tank",
     "entity_name": "Telemetry",
     "entity_type": "telemetryValues",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "uid", "name": "uid", "type": "int" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "isActive", "name": "isActive", "type": "Boolean" },
       { "object_id": "lastChangeTime", "name": "lastChangeTime", "type": "DateTime" },
       { "object_id": "description", "name": "description", "type": "Text" },
       { "object_id": "severity", "name": "severity", "type": "int" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: Telemetry' \
  -H 'fiware-servicepath: /TelemetryValues' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_transfer_line",
     "entity_name": "Telemetry",
     "entity_type": "telemetryValues",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "uid", "name": "uid", "type": "int" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "isActive", "name": "isActive", "type": "Boolean" },
       { "object_id": "lastChangeTime", "name": "lastChangeTime", "type": "DateTime" },
       { "object_id": "description", "name": "description", "type": "Text" },
       { "object_id": "severity", "name": "severity", "type": "int" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

#### Configuring the Broker ####

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: Telemetry' \
  -H 'fiware-servicepath: /TelemetryValues' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "Telemetry"
      }
    ],
    "condition": {
      "attrs": [
        "treepath", "DateTime", "name", "unit", "schema", "value", "elementType", "elementTypeName","stateChangeTime", "commandState", "commandKey", 
        "caller", "result", "duration", "contextId", "executer", "uid", "isActive", "lastChangeTime", "description", "severity"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "treepath", "DateTime", "name", "unit", "schema", "value", "elementType", "elementTypeName","stateChangeTime", "commandState", "commandKey", 
        "caller", "result", "duration", "contextId", "executer", "uid", "isActive", "lastChangeTime", "description", "severity"
    ],
    "onlyChangedAttrs":false,
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