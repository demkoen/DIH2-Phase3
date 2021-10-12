curl -iX POST \
  'http://10.11.118.60:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: _machining_equpment' \
  -H 'fiware-servicepath: /' \
  -d '{
 "services": [
   {
     "apikey":      "High_Volume_Milling_Cell.UN_machining",
     "cbroker":     "http://orion:1026",
     "entity_type": "_EM_Machining_Equipment",
     "resource":    "/"
   }
 ]
}'

sleep 0.5

curl -iX POST \
'http://10.11.118.60:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: _machining_equpment' \
  -H 'fiware-servicepath: /' \
  -d '{
  "devices": [
  {
    "device_id":   "Spindle_Controller",
    "entity_name": "High_Volume_Milling_Cell:UN_machining",
    "entity_type": "Spindle_Controller",
    "protocol":    "PDI-IoTA-UltraLight",
    "transport":   "MQTT",
    "timezone":    "Europe/Berlin",
    "attributes": [
      { "object_id": "em_milling", "name": "Mill_Counter", "type": "Text" },
      { "object_id": "g", "name": "CounterG", "type": "Text" }
    ]
  }
  ]
}'

sleep 0.5

curl -iX POST \
  'http://10.11.118.60:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: _machining_equpment' \
  -H 'fiware-servicepath: /' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "High_Volume_Milling_Cell:UN_machining"
      }
    ],
    "condition": {
      "attrs": [
        "Counter","Mill_Counter"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "Counter", "Mill_Counter"
    ],
    "metadata": ["dateCreated", "dateModified"]
  },
  "throttling": 1
}'