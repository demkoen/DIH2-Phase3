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

* Site – A factory site, for example, production location Y.
* Area – Part of a site where a process cell can be located, building X.
* Process Cell – Part of a factory with different Units
* Unit – A part of a factory where a certain product undergoes a change.
* Equipment Module – A collection of control modules that perform a task, fill, cool, and mix.
* Control Module – A valve, pump, motor.

![Physical Model](/images/ISA88_SummarySmall.png)

The Physical Model is what we want to show in our online representation in Grafana (Digital Twin) and is made available via MQTT

## S88 Translation to IoT

In the communication protocol we divide the variables according to the physical model.

### Providing (sensor)values

Instead of an typical MQTT way of presenting values, we're presenting values via [UltraLight 2.0] payload.

In the next example we have a component that measures two temperatures. One on the roof and in the basement. In a traditional way we could display the data as follows
Typical MQTT:

```jsx
temperature/roof = 25
temperature/basement = 15
```

Because we want to represent the data in a S88 structure, we want to concatenate the sensorvalues in the component that we've made available. This results in a generic *attrs* attribute, that contains all values of that compnent. For example:

```jsx
.../attrs = temp_roof|25|temp_basement|15
```

### MQTT Tree structure(s)

We make the subdivision among

* Process Cell (PC)
  * Unit (UN)
    * Equipment Module (EM)
      * Control Module (CM)

We Ignore the *site* and *Area* they don't hold any relevant information in this example. It is, however, possible to include them in your own project.

In MQTT, the subdivisons of the parent(s) of are seperated by a dot (.) This is done to contain the nesting in MQTT to an acceptable level and make grouping easy. Only the element itself is sperated by an *forward* slash (/)
For example, we have an varible, living in an Equipment module, the path will be

```jsx
PC.UN/EM/attrs = %varname%|value
```

In case of an variable in a Control Module, the path should be

```jsx
PC.UN.EM/CM/attrs = %varname%|value
```

## MQTT Example

In our project, we have the following structure

* **High_Volume_Milling_cell** (PC)
  * **UN_utilities** (UN)
    * *attrs = bleedAirStatus|5.51|dustExtracctionStatus|6.26|dustExtractionPower|1.40*
  * **UN_machining** (UN)
    * *attrs = g|4*
    * **Milling_Equipment** (EM)
      * *attrs = em_milling|1*
      * **Spindle_Controller** (CM)
        * *attrs = r|10*

In an application as MQTT Explorer it shows as follows:

![MQTT Explorer](/images/mqtt_explorer.png)

[ISA 88]: https://iautomation.nl/techniek/automatiseringstechniek/isa-88/?lang=en "ISA S88"
[UltraLight 2.0]: https://fiware-iotagent-ul.readthedocs.io/en/latest/usermanual/index.html#user-programmers-manual "Ultralight 2.0 Protocol"
[MQTT Explorer]: http://mqtt-explorer.com/ "MQTT Explorer"
