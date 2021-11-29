curl -iX POST \
  'http://192.168.178.101:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: PhysicialElementService' \
  -H 'fiware-servicepath: /PhysicalElementsStates' \
  -d '{
 "services": [
   {
     "apikey":      "PhysicalElements",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "PhysicalElements/"
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: PhysicialElementService' \
  -H 'fiware-servicepath: /PhysicalElementsStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Testmachine_Cell",
     "entity_name": "PhyscialElements",
     "entity_type": "PhysicalElementsStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: PhysicialElementService' \
  -H 'fiware-servicepath: /PhysicalElementsStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_mixer",
     "entity_name": "PhyscialElements",
     "entity_type": "PhysicalElementsStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: PhysicialElementService' \
  -H 'fiware-servicepath: /PhysicalElementsStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Vitamine_C_adder",
     "entity_name": "PhyscialElements",
     "entity_type": "PhysicalElementsStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: PhysicialElementService' \
  -H 'fiware-servicepath: /PhysicalElementsStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_feeder",
     "entity_name": "PhyscialElements",
     "entity_type": "PhysicalElementsStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: PhysicialElementService' \
  -H 'fiware-servicepath: /PhysicalElementsStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Sugar_solution_tank",
     "entity_name": "PhyscialElements",
     "entity_type": "PhysicalElementsStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: PhysicialElementService' \
  -H 'fiware-servicepath: /PhysicalElementsStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_mixing_tank",
     "entity_name": "PhyscialElements",
     "entity_type": "PhysicalElementsStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: PhysicialElementService' \
  -H 'fiware-servicepath: /PhysicalElementsStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_transfer_line",
     "entity_name": "PhyscialElements",
     "entity_type": "PhysicalElementsStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: PhysicialElementService' \
  -H 'fiware-servicepath: /PhysicalElementsStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_feeeder_pump",
     "entity_name": "PhyscialElements",
     "entity_type": "PhysicalElementsStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: PhysicialElementService' \
  -H 'fiware-servicepath: /PhysicalElementsStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_feeder_valve",
     "entity_name": "PhyscialElements",
     "entity_type": "PhysicalElementsStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: PhysicialElementService' \
  -H 'fiware-servicepath: /PhysicalElementsStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Sugar_solution_feeder_pump",
     "entity_name": "PhyscialElements",
     "entity_type": "PhysicalElementsStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: PhysicialElementService' \
  -H 'fiware-servicepath: /PhysicalElementsStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Sugar_solution_feeder_valve",
     "entity_name": "PhyscialElements",
     "entity_type": "PhysicalElementsStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: PhysicialElementService' \
  -H 'fiware-servicepath: /PhysicalElementsStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_mixing_agitator",
     "entity_name": "PhyscialElements",
     "entity_type": "PhysicalElementsStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: PhysicialElementService' \
  -H 'fiware-servicepath: /PhysicalElementsStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_cooler",
     "entity_name": "PhyscialElements",
     "entity_type": "PhysicalElementsStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: PhysicialElementService' \
  -H 'fiware-servicepath: /PhysicalElementsStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_transfer_valve",
     "entity_name": "PhyscialElements",
     "entity_type": "PhysicalElementsStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: PhysicialElementService' \
  -H 'fiware-servicepath: /PhysicalElementsStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Vitamine_C_feeder_tank",
     "entity_name": "PhyscialElements",
     "entity_type": "PhysicalElementsStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: PhysicialElementService' \
  -H 'fiware-servicepath: /PhysicalElementsStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Vitamine_C_mixing_tank",
     "entity_name": "PhyscialElements",
     "entity_type": "PhysicalElementsStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: PhysicialElementService' \
  -H 'fiware-servicepath: /PhysicalElementsStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Mixed_apple_juice_transfer_line",
     "entity_name": "PhyscialElements",
     "entity_type": "PhysicalElementsStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: PhysicialElementService' \
  -H 'fiware-servicepath: /PhysicalElementsStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Vitamine_C_pump",
     "entity_name": "PhyscialElements",
     "entity_type": "PhysicalElementsStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: PhysicialElementService' \
  -H 'fiware-servicepath: /PhysicalElementsStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Vitamine_C_valve",
     "entity_name": "PhyscialElements",
     "entity_type": "PhysicalElementsStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: PhysicialElementService' \
  -H 'fiware-servicepath: /PhysicalElementsStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Vitamine_c_mixing_agitator",
     "entity_name": "PhyscialElements",
     "entity_type": "PhysicalElementsStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: PhysicialElementService' \
  -H 'fiware-servicepath: /PhysicalElementsStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Vitamine_C_cooler",
     "entity_name": "PhyscialElements",
     "entity_type": "PhysicalElementsStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5


curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: PhysicialElementService' \
  -H 'fiware-servicepath: /PhysicalElementsStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Mixed_apple_juice_transfer_valve",
     "entity_name": "PhyscialElements",
     "entity_type": "PhysicalElementsStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "elementType", "name": "elementType", "type": "int" },
       { "object_id": "elementTypeName", "name": "elementTypeName", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 0.5

curl -iX POST \
  'http://192.168.178.101:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: PhysicialElementService' \
  -H 'fiware-servicepath: /PhysicalElementsStates' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "PhyscialElements"
      }
    ],
    "condition": {
      "attrs": [
        "oldstate", "newstate", "oldname", "newname", "stateChangeTime", "elementType", "elementTypeName", "treepath"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "oldstate", "newstate", "oldname", "newname", "stateChangeTime", "elementType", "elementTypeName", "treepath"
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