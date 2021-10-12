curl -iX POST \
  'http://10.11.118.60:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: _units' \
  -H 'fiware-servicepath: /' \
  -d '{
 "services": [
   {
     "apikey":      "High_Volume_Milling_Cell",
     "cbroker":     "http://orion:1026",
     "entity_type": "_Units",
     "resource":    "/"
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://10.11.118.60:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: _units' \
  -H 'fiware-servicepath: /' \
  -d '{
 "devices": [
   {
     "device_id":   "UN_machining",
     "entity_name": "High_Volume_Milling_Cell",
     "entity_type": "UN_machining",
     "protocol":    "PDI-IoTA-UltraLight",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "g", "name": "Count", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://10.11.118.60:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: _units' \
  -H 'fiware-servicepath: /' \
  -d '{
 "devices": [
   {
     "device_id":   "UN_utilities",
     "entity_name": "High_Volume_Milling_Cell",
     "entity_type": "UN_utilities",
     "protocol":    "PDI-IoTA-UltraLight",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "bleedAirStatus", "name": "BleedAirState", "type": "Text" },
       { "object_id": "dustExtractionStatus", "name": "DustExtractionState", "type": "Text" },
       { "object_id": "dustExtractionPower", "name": "DustExtractionPower", "type": "Text" }
     ]
   }
 ]
}'

curl -iX POST \
  'http://10.11.118.60:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: _units' \
  -H 'fiware-servicepath: /' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "High_Volume_Milling_Cell"
      }
    ],
    "condition": {
      "attrs": [
        "Count", "BleedAirState", "DustExtractionState", "DustExtractionPower"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "Count", "BleedAirState", "DustExtractionState", "DustExtractionPower"
    ],
    "metadata": ["dateCreated", "dateModified"]
  },
  "throttling": 1
}'