curl -iX POST \
  'http://192.168.178.101:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Testmachine_Cell' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "services": [
   {
     "apikey":      "PackML",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "PackML/"
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Testmachine_Cell' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Testmachine_Cell",
     "entity_name": "PackML",
     "entity_type": "PackMLStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Testmachine_Cell' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "PackML"
      }
    ],
    "condition": {
      "attrs": [
        "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
    ],
    "metadata": ["dateCreated", "dateModified"]
  }
}'

sleep 1

######################################################################################

curl -iX POST \
  'http://192.168.178.101:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_mixer' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "services": [
   {
     "apikey":      "PackML",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "PackML/"
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_mixer' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_mixer",
     "entity_name": "PackML",
     "entity_type": "PackMLStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_mixer' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "PackML"
      }
    ],
    "condition": {
      "attrs": [
        "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
    ],
    "metadata": ["dateCreated", "dateModified"]
  }
}'

sleep 1

######################################################################################

curl -iX POST \
  'http://192.168.178.101:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Vitamine_C_adder' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "services": [
   {
     "apikey":      "PackML",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "PackML/"
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Vitamine_C_adder' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Vitamine_C_adder",
     "entity_name": "PackML",
     "entity_type": "PackMLStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Vitamine_C_adder' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "PackML"
      }
    ],
    "condition": {
      "attrs": [
        "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
    ],
    "metadata": ["dateCreated", "dateModified"]
  }
}'

sleep 1

######################################################################################

curl -iX POST \
  'http://192.168.178.101:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_feeder' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "services": [
   {
     "apikey":      "PackML",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "PackML/"
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_feeder' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_feeder",
     "entity_name": "PackML",
     "entity_type": "PackMLStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_feeder' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "PackML"
      }
    ],
    "condition": {
      "attrs": [
        "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
    ],
    "metadata": ["dateCreated", "dateModified"]
  }
}'

sleep 1

######################################################################################

curl -iX POST \
  'http://192.168.178.101:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Sugar_solution_tank' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "services": [
   {
     "apikey":      "PackML",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "PackML/"
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Sugar_solution_tank' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Sugar_solution_tank",
     "entity_name": "PackML",
     "entity_type": "PackMLStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Sugar_solution_tank' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "PackML"
      }
    ],
    "condition": {
      "attrs": [
        "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
    ],
    "metadata": ["dateCreated", "dateModified"]
  }
}'

sleep 1

######################################################################################

curl -iX POST \
  'http://192.168.178.101:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_mixing_tank' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "services": [
   {
     "apikey":      "PackML",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "PackML/"
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_mixing_tank' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_mixing_tank",
     "entity_name": "PackML",
     "entity_type": "PackMLStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_mixing_tank' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "PackML"
      }
    ],
    "condition": {
      "attrs": [
        "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
    ],
    "metadata": ["dateCreated", "dateModified"]
  }
}'

sleep 1

######################################################################################

curl -iX POST \
  'http://192.168.178.101:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_transfer_line' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "services": [
   {
     "apikey":      "PackML",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "PackML/"
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_transfer_line' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_transfer_line",
     "entity_name": "PackML",
     "entity_type": "PackMLStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_transfer_line' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "PackML"
      }
    ],
    "condition": {
      "attrs": [
        "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
    ],
    "metadata": ["dateCreated", "dateModified"]
  }
}'

sleep 1

######################################################################################

curl -iX POST \
  'http://192.168.178.101:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_feeeder_pump' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "services": [
   {
     "apikey":      "PackML",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "PackML/"
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_feeeder_pump' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_feeeder_pump",
     "entity_name": "PackML",
     "entity_type": "PackMLStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_feeeder_pump' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "PackML"
      }
    ],
    "condition": {
      "attrs": [
        "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
    ],
    "metadata": ["dateCreated", "dateModified"]
  }
}'

sleep 1

######################################################################################

curl -iX POST \
  'http://192.168.178.101:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_feeder_valve' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "services": [
   {
     "apikey":      "PackML",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "PackML/"
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_feeder_valve' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_feeder_valve",
     "entity_name": "PackML",
     "entity_type": "PackMLStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_feeder_valve' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "PackML"
      }
    ],
    "condition": {
      "attrs": [
        "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
    ],
    "metadata": ["dateCreated", "dateModified"]
  }
}'

sleep 1

######################################################################################

curl -iX POST \
  'http://192.168.178.101:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Sugar_solution_feeder_pump' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "services": [
   {
     "apikey":      "PackML",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "PackML/"
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Sugar_solution_feeder_pump' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Sugar_solution_feeder_pump",
     "entity_name": "PackML",
     "entity_type": "PackMLStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Sugar_solution_feeder_pump' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "PackML"
      }
    ],
    "condition": {
      "attrs": [
        "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
    ],
    "metadata": ["dateCreated", "dateModified"]
  }
}'

sleep 1

######################################################################################

curl -iX POST \
  'http://192.168.178.101:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Sugar_solution_feeder_valve' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "services": [
   {
     "apikey":      "PackML",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "PackML/"
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Sugar_solution_feeder_valve' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Sugar_solution_feeder_valve",
     "entity_name": "PackML",
     "entity_type": "PackMLStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Sugar_solution_feeder_valve' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "PackML"
      }
    ],
    "condition": {
      "attrs": [
        "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
    ],
    "metadata": ["dateCreated", "dateModified"]
  }
}'

sleep 1

######################################################################################

curl -iX POST \
  'http://192.168.178.101:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_mixing_agitator' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "services": [
   {
     "apikey":      "PackML",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "PackML/"
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_mixing_agitator' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_mixing_agitator",
     "entity_name": "PackML",
     "entity_type": "PackMLStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_mixing_agitator' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "PackML"
      }
    ],
    "condition": {
      "attrs": [
        "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
    ],
    "metadata": ["dateCreated", "dateModified"]
  }
}'

sleep 1

######################################################################################

curl -iX POST \
  'http://192.168.178.101:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_cooler' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "services": [
   {
     "apikey":      "PackML",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "PackML/"
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_cooler' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_cooler",
     "entity_name": "PackML",
     "entity_type": "PackMLStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_cooler' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "PackML"
      }
    ],
    "condition": {
      "attrs": [
        "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
    ],
    "metadata": ["dateCreated", "dateModified"]
  }
}'

sleep 1

######################################################################################

curl -iX POST \
  'http://192.168.178.101:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_transfer_valve' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "services": [
   {
     "apikey":      "PackML",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "PackML/"
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_transfer_valve' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Apple_juice_transfer_valve",
     "entity_name": "PackML",
     "entity_type": "PackMLStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Apple_juice_transfer_valve' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "PackML"
      }
    ],
    "condition": {
      "attrs": [
        "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
    ],
    "metadata": ["dateCreated", "dateModified"]
  }
}'

sleep 1

######################################################################################

curl -iX POST \
  'http://192.168.178.101:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Vitamine_C_feeder_tank' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "services": [
   {
     "apikey":      "PackML",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "PackML/"
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Vitamine_C_feeder_tank' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Vitamine_C_feeder_tank",
     "entity_name": "PackML",
     "entity_type": "PackMLStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Vitamine_C_feeder_tank' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "PackML"
      }
    ],
    "condition": {
      "attrs": [
        "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
    ],
    "metadata": ["dateCreated", "dateModified"]
  }
}'

sleep 1

######################################################################################

curl -iX POST \
  'http://192.168.178.101:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Vitamine_C_mixing_tank' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "services": [
   {
     "apikey":      "PackML",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "PackML/"
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Vitamine_C_mixing_tank' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Vitamine_C_mixing_tank",
     "entity_name": "PackML",
     "entity_type": "PackMLStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Vitamine_C_mixing_tank' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "PackML"
      }
    ],
    "condition": {
      "attrs": [
        "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
    ],
    "metadata": ["dateCreated", "dateModified"]
  }
}'

sleep 1

######################################################################################

curl -iX POST \
  'http://192.168.178.101:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Mixed_apple_juice_transfer_line' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "services": [
   {
     "apikey":      "PackML",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "PackML/"
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Mixed_apple_juice_transfer_line' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Mixed_apple_juice_transfer_line",
     "entity_name": "PackML",
     "entity_type": "PackMLStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Mixed_apple_juice_transfer_line' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "PackML"
      }
    ],
    "condition": {
      "attrs": [
        "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
    ],
    "metadata": ["dateCreated", "dateModified"]
  }
}'

sleep 1

######################################################################################

curl -iX POST \
  'http://192.168.178.101:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Vitamine_C_pump' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "services": [
   {
     "apikey":      "PackML",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "PackML/"
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Vitamine_C_pump' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Vitamine_C_pump",
     "entity_name": "PackML",
     "entity_type": "PackMLStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Vitamine_C_pump' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "PackML"
      }
    ],
    "condition": {
      "attrs": [
        "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
    ],
    "metadata": ["dateCreated", "dateModified"]
  }
}'

sleep 1

######################################################################################

curl -iX POST \
  'http://192.168.178.101:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Vitamine_C_valve' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "services": [
   {
     "apikey":      "PackML",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "PackML/"
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Vitamine_C_valve' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Vitamine_C_valve",
     "entity_name": "PackML",
     "entity_type": "PackMLStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Vitamine_C_valve' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "PackML"
      }
    ],
    "condition": {
      "attrs": [
        "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
    ],
    "metadata": ["dateCreated", "dateModified"]
  }
}'

sleep 1

######################################################################################

curl -iX POST \
  'http://192.168.178.101:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Vitamine_c_mixing_agitator' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "services": [
   {
     "apikey":      "PackML",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "PackML/"
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Vitamine_c_mixing_agitator' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Vitamine_c_mixing_agitator",
     "entity_name": "PackML",
     "entity_type": "PackMLStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Vitamine_c_mixing_agitator' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "PackML"
      }
    ],
    "condition": {
      "attrs": [
        "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
    ],
    "metadata": ["dateCreated", "dateModified"]
  }
}'

sleep 1

######################################################################################

curl -iX POST \
  'http://192.168.178.101:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Vitamine_C_cooler' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "services": [
   {
     "apikey":      "PackML",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "PackML/"
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Vitamine_C_cooler' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Vitamine_C_cooler",
     "entity_name": "PackML",
     "entity_type": "PackMLStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Vitamine_C_cooler' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "PackML"
      }
    ],
    "condition": {
      "attrs": [
        "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
    ],
    "metadata": ["dateCreated", "dateModified"]
  }
}'

sleep 1

######################################################################################

curl -iX POST \
  'http://192.168.178.101:4041/iot/services' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Mixed_apple_juice_transfer_valve' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "services": [
   {
     "apikey":      "PackML",
     "cbroker":     "http://orion:1026",
     "entity_type": "ProcessCell",
     "resource":    "PackML/"
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:4041/iot/devices' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Mixed_apple_juice_transfer_valve' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
 "devices": [
   {
     "device_id":   "Mixed_apple_juice_transfer_valve",
     "entity_name": "PackML",
     "entity_type": "PackMLStates",
     "transport":   "MQTT",
     "timezone":    "Europe/Berlin",
     "attributes": [
       { "object_id": "oldstate", "name": "oldstate", "type": "int" },
       { "object_id": "newstate", "name": "newstate", "type": "int" },
       { "object_id": "stateChangeTime", "name": "stateChangeTime", "type": "DateTime" },
       { "object_id": "oldname", "name": "oldname", "type": "Text" },
       { "object_id": "newname", "name": "newname", "type": "Text" },
       { "object_id": "treepath", "name": "treepath", "type": "Text" }
     ]
   }
 ]
}'

sleep 1

curl -iX POST \
  'http://192.168.178.101:1026/v2/subscriptions/' \
  -H 'Content-Type: application/json' \
  -H 'fiware-service: packmlService_Mixed_apple_juice_transfer_valve' \
  -H 'fiware-servicepath: /packmlStates' \
  -d '{
  "description": "plc_id",
  "subject": {
    "entities": [
      {
        "idPattern": "PackML"
      }
    ],
    "condition": {
      "attrs": [
        "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
      ]
    }
  },
  "notification": {
    "http": {
      "url": "http://quantumleap:8668/v2/notify"
    },
    "attrs": [
      "oldMode", "newMode", "oldname", "newname", "modeChangeTime", "treepath"
    ],
    "metadata": ["dateCreated", "dateModified"]
  }
}'

sleep 1

######################################################################################
