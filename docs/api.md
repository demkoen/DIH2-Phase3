# Protocol

This document describes how the data should be formatted to be sent over MQTT.

## ISA S88

[ISA 88] is a standard for batch controlled production environments. It indicates how a production system is set up in order to create the highest possible equality and copy ability for all parts of the system. The production environment is divided into logical blocks based on modules. The intention of the standard is to realize functionality based on these blocks, which can be reused in other parts of the production environment so that only one part needs to be designed.

### Procedural and Physical model

A number of models are defined within the ISA 88 standard. The 2 most important are the procedural and physical models. These define how the plant is physically arranged, ie where the valves and pumps form a filling system or a cooling system. And a procedural model that says what steps need to be taken to activate the cooling, or the steps to do a fill action. These models start with the smallest level of description and work towards ever-increasing parts in a factory.

### Procedural model

The procedural model works together with the physical model to model the factory. The procedural model defines the steps that the module must go through to get an action done. The details of the steps vary per module. Within the procedural model we have the following modules:

* Procedure – Controlled a Process cell, is usually created in a batch program
* Unit Procedure – Controlled a Unit, is a collection of operations
* Operation – Controls an Equipment module, an action such as filling, emptying, cooling, heating
* Phase – Controls a control module, actions such as open, close, start, stop

### Physical Model

A production environment naturally includes many physical elements, valves, pumps, tanks, coolers and mixers, for example. These elements are brought together in a physical model so that more complex elements can be built up from basic elements (control modules). Bringing together these control modules, for example, creates a tank with a function. This tank can then serve as the basis (template) for the following equal tanks. In this way, only 1 complex element needs to be designed and described. The entire structure of the physical model is as follows:

* Site – A factory site, for example, production location Y. (Not used is this model, We only have information about the machine)
* Area – Part of a site where a process cell can be located, building X. (Not used is this model, We only have information about the machine)
* Process Cell – Part of a factory with different Units
* Unit – A part of a factory where a certain product undergoes a change.
* Equipment Module – A collection of control modules that perform a task, fill, cool, and mix.
* Control Module – A valve, pump, motor.

![Physical Model](images/ISA88_SummarySmall.png)

The Physical Model is what we want to show in our online representation in Grafana (Digital Twin) and is made available via MQTT

## S88 Translation to IoT

Besides the PackML states of the physical model and the Elements of the Procedural model, we've chosen to also define telemetry, command and event data of the SMB. How this data is setup is declared as follows

### Providing the Physical Elements

For the Apple Juice (example) factory, We've made an [Example configuration shell script](configuration/Juicer_Startup_PhysicalElements_configuration.sh) that configures the IoT Agent and Context Broker. It's advisable to generate these files from/for your own project.

You can find the description of the datamodel in the [PackML schema.json]

#### MQTT Topic PhysicalElements

* PhysicalElements
  * attrs
    * oldstate
    * newstate
    * stateChangeTime
    * oldname
    * newname
    * treepath

#### MQTT PhysicalElements Example

* **Testmachine_cell** (Process Cell)

```json
PhysicalElements/Testmachine_Cell/attrs
```

```json
{
  "oldstate": 6,
  "newstate": 6,
  "stateChangeTime": "2021-11-27T16:13:34.356Z",
  "oldname": "Execute",
  "newname": "Execute",
  "elementType": 1,
  "elementTypeName": "ProcessCell",
  "treepath": "Testmachine_Cell"
}
```

* **Apple_juice_mixer** (Unit)

```json
PhysicalElements/Apple_juice_mixer/attrs
```

```json
{
  "oldstate": 3,
  "newstate": 6,
  "stateChangeTime": "2021-11-27T14:36:20.013Z",
  "oldname": "Starting",
  "newname": "Execute",
  "elementType": 2,
  "elementTypeName": "Unit",
  "treepath": "Testmachine_Cell/Apple_juice_mixer"
}
```

* **Apple_juice_mixing_tank** (Equipment Module)

```json
PhysicalElements/Apple_juice_mixing_tank/attrs
```

```json
{
  "oldstate": 3,
  "newstate": 6,
  "stateChangeTime": "2021-11-27T14:36:20.013Z",
  "oldname": "Starting",
  "newname": "Execute",
  "elementType": 3,
  "elementTypeName": "EquipmentModule",
  "treepath": "Testmachine_Cell/Apple_juice_mixer/Apple_juice_mixing_tank"
}
```

* **Apple_juice_mixing_agitator** (Control Module)

```json
PhysicalElements/Apple_juice_mixing_agitator/attrs
```

```json
{
  "oldstate": 3,
  "newstate": 6,
  "stateChangeTime": "2021-11-27T14:36:20.011Z",
  "oldname": "Starting",
  "newname": "Execute",
  "elementType": 4,
  "elementTypeName": "ControlModule",
  "treepath": "Testmachine_Cell/Apple_juice_mixer/Apple_juice_mixing_tank/Apple_juice_mixing_agitator"
}
```

### Providing the Procedural Elements

[Example configuration shell script](configuration/Juicer_Startup_ProceduralElements_configuration.sh) that configures the IoT Agent and Context Broker. It's advisable to generate these files from/for your own project.

You can find the description of the datamodel in the [Procedural Elements schema.json]

#### MQTT Topic ProceduralElements

* ProceduralElements
  * attrs
    * commandSTate
    * stateChangeTime
    * commandKey
    * caller
    * elementType
    * result
    * durantion
    * contextId
    * executer
    * treepath

#### MQTT ProceduralElements Example

* **Apple juice procedure** (Procedure)

```json
ProceduralElements/Apple juice procedure/attrs
```

```json
{
  "commandState": "execute",
  "stateChangeTime": "2021-11-27T16:17:15.789Z",
  "commandKey": "Apple juice procedure",
  "caller": "Testmachine_Cell",
  "elementType": 4,
  "elementTypeName": "procedure",
  "result": 0,
  "duration": 0,
  "contextId": "2021-11-27-16:17:15.789_84",
  "executer": "Testmachine_Cell",
  "treepath": "Testmachine_Cell"
}
```

* **Apple_Juice_mixing_unit_procedure** (Unit Procedure)

```json
ProceduralElements/Apple_Juice_mixing_unit_procedure/attrs
```

```json
{
  "commandState": "Completed",
  "stateChangeTime": "2021-11-27T16:19:01.499Z",
  "commandKey": "Apple_Juice_mixing_unit_procedure",
  "caller": "Apple_juice_mixer",
  "elementType": 5,
  "elementTypeName": "unitProcedure",
  "result": 2147483647,
  "duration": 0,
  "contextId": "2021-11-27-16:18:26.933_85",
  "executer": "Apple_juice_mixer",
  "treepath": "Testmachine_Cell/Apple_juice_mixer"
}
```

* **Apple_juice_feed_operation** (Operation)

```json
ProceduralElements/Apple_juice_feed_operation/attrs
```

```json
{
  "commandState": "Completed",
  "stateChangeTime": "2021-11-27T16:19:48.125Z",
  "commandKey": "Apple_juice_feed_operation",
  "caller": "Apple_juice_mixer",
  "elementType": 6,
  "elementTypeName": "operation",
  "result": 2147483647,
  "duration": 0,
  "contextId": "2021-11-27-16:19:39.075_86",
  "executer": "Apple_juice_mixer",
  "treepath": "Testmachine_Cell/Apple_juice_mixer"
}
```

* **Feed_sugar_solution_phase** (Phase)

```json
ProceduralElements/Feed_sugar_solution_phase/attrs
```

```json
{
  "commandState": "Completed",
  "stateChangeTime": "2021-11-27T16:19:41.107Z",
  "commandKey": "Feed_sugar_solution_phase",
  "caller": "Sugar_solution_tank",
  "elementType": 7,
  "elementTypeName": "phase",
  "result": 2147483647,
  "duration": 0,
  "contextId": "2021-11-27-16:19:39.075_86",
  "executer": "Sugar_solution_tank",
  "treepath": "Testmachine_Cell/Apple_juice_mixer/Sugar_solution_tank"
}
```

### Providing the telemetry data

For the Apple Juice (example) factory, We've made an [Example configuration shell script](configuration/Juicer_Startup_Telemetry_configuration.sh) that configures the IoT Agent and Context Broker. It's advisable to generate these files from/for your own project.

You can find the description of the datamodel in the [Telemetry schema.json]

#### MQTT Topic Telemetry

* telemetry
  * attrs
    * name
    * unit
    * schema
    * value
    * DateTime
    * treepath
    * commandSTate
    * stateChangeTime
    * commandKey
    * caller
    * elementType
    * result
    * durantion
    * contextId
    * executer
    * uid
    * isActive
    * lastChangeTime
    * description
    * arguments
    * severity

#### MQTT Telemetry Example

* **Apple_juice_mixing_tank** (Sensor)

```json
Telemetry/Apple_juice_mixing_tank/attrs
```

```json
{
  "treepath": "Testmachine_Cell/Apple_juice_mixer/Apple_juice_mixing_tank",
  "DateTime": "2021-11-27T16:23:46.616Z",
  "name": "temperature",
  "unit": "deg C",
  "schema": "float",
  "value": "9.56783398184177",
  "elementType": 3,
  "elementTypeName": "sensor"
}
```

* **Enable** (Command)

```json
Telemetry/Enable/attrs
```

```json

{
  "commandState": "Completed",
  "stateChangeTime": "2021-11-27T16:24:38.212Z",
  "commandKey": "Enable",
  "caller": "Apple_juice_cooler",
  "elementType": 1,
  "elementTypeName": "command",
  "result": 2147483647,
  "duration": 5,
  "contextId": "2021-11-27-16:24:29.154_90",
  "executer": "Apple_juice_cooler",
  "treepath": "Testmachine_Cell/Apple_juice_mixer/Apple_juice_mixing_tank/Apple_juice_cooler"
}
```

* **Enable** (Event)

```json
Telemetry/Apple_juice_feeeder_pump/attrs
```

```json
{
  "uid": -1019,
  "elementType": 2,
  "elementTypeName": "event",
  "isActive": false,
  "lastChangeTime": "2021-11-27T13:39:01.465Z",
  "description": "Cannot clear module, module is in invalid state (must be aborted or stopped)",
  "severity": 1,
  "treePath": "Testmachine_Cell/Apple_juice_mixer/Apple_juice_feeder/Apple_juice_feeeder_pump"
}
```

### Providing command data

For the Apple Juice (example) factory, We've made an [Example configuration shell script](configuration/Juicer_Startup_Commands_configuration.sh) that configures the IoT Agent and Context Broker. It's advisable to generate these files from/for your own project.

You can find the description of the datamodel in the [Commands schema.json]

### Providing the event data

For the Apple Juice (example) factory, We've made an [Example configuration shell script](configuration/Juicer_Startup_events_configuration.sh) that configures the IoT Agent and Context Broker. It's advisable to generate these files from/for your own project.

You can find the description of the datamodel in the [Events schema.json]

[Top](#top)

## MQTT Example

In an application as MQTT Explorer it shows as follows:

![MQTT Explorer](images/mqtt_explorer.png)

[ISA 88]: https://iautomation.nl/techniek/automatiseringstechniek/isa-88/?lang=en "ISA S88"
[UltraLight 2.0]: https://fiware-iotagent-ul.readthedocs.io/en/latest/usermanual/index.html#user-programmers-manual "Ultralight 2.0 Protocol"
[MQTT Explorer]: http://mqtt-explorer.com/ "MQTT Explorer"
[PackML schema.json]: configuration/PackML/schema.json "PackML schema.json"
[Procedural Elements schema.json]: configuration/ProceduralElements/schema.json "Procedural Elements schema.json"
[Telemetry schema.json]: configuration/Telemetry/schema.json "Telemetry schema.json"
[Commands schema.json]: configuration/Commands/schema.json "Commands schema.json"
[Events schema.json]: configuration/Events/schema.json "Events schema.json"
