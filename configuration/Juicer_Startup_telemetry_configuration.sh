curl -iX POST \
  'http://192.168.178.101:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: telemetry' \
  -H 'fiware-servicepath: /telemetryValues' \
  -d '{
 "services": [
   {
     "apikey":      "telemetry",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "telemetry"
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: telemetry' \
  -H 'fiware-servicepath: /telemetryValues' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_mixing_tank",
     "entity_name": "telemetry",
     "entity_type": "telemetryValues",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "treepath", "name": "treepath", "type": "Text" },
       { "object_id": "DateTime", "name": "DateTime", "type": "DateTime" },
       { "object_id": "name", "name": "name", "type": "Text" },
       { "object_id": "unit", "name": "unit", "type": "Text" },
       { "object_id": "schema", "name": "schema", "type": "Text" },
       { "object_id": "value", "name": "value", "type": "number" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: telemetry' \
  -H 'fiware-servicepath: /telemetryValues' \
  -d '{
 "devices": [
   {
     "device_id":   "Vitamine_C_mixing_tank",
     "entity_name": "telemetry",
     "entity_type": "telemetryValues",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "treepath", "name": "treepath", "type": "Text" },
       { "object_id": "DateTime", "name": "DateTime", "type": "DateTime" },
       { "object_id": "name", "name": "name", "type": "Text" },
       { "object_id": "unit", "name": "unit", "type": "Text" },
       { "object_id": "schema", "name": "schema", "type": "Text" },
       { "object_id": "value", "name": "value", "type": "number" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: telemetry' \
  -H 'fiware-servicepath: /telemetryValues' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "telemetry"
      }
    ],
    "condition": {
      "attrs": [
        "treepath", "DateTime", "name", "unit", "schema", "value"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "treepath", "DateTime", "name", "unit", "schema", "value"
    ],
    "metadata": ["dateCreated", "dateModified"]
  }
}'

sleep 0.5

pause