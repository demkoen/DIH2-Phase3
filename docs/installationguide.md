# Installation guide

## Content

- [Docker](#docker)
- [Preparations](#preparations)
  - [Environment variables](#environment-variables)
  - [ElasticSearch Map Count](#elasticsearch-map-count)
- [Starting the Docker containers](#starting-the-docker-containers)
- [Configuring fiware IoT Agent](#configuring-fiware-iot-agent)
  - [Configuring the IoT Agent](#configuring-the-iot-agent)
    - [Configuring IoT Agent with one variable](#configuring-iot-agent-with-one-variable)
    - [Configuring IoT Agent with multiple variables](#configuring-iot-agent-with-multiple-variables)
- [Configuring the Orion Context Broker](#configuring-the-orion-context-broker)
- [Configuring Grafana](#configuring-grafana)
  - [Add the datasources to Grafana](#add-the-datasources-to-grafana)
  - [Creating a new dashboard](#creating-a-new-dashboard)
  - [Importing a dashboard](#Importing-a-dashboard)

[Top](#top)

## Docker

This manual describes how to configure and start a server via a docker-compose file. Therefore it's required to have docker installed. This manual describes the process on a Windows machine (Windows 10 Professional, version 1909, OS Build 18363.1256), with Docker Engine v20.10.8. However, due to the nature of Docker, this manual should also be sufficient for machines running macOS or Linux.

[Top](#top)

## Preparations

[Top](#top)

### Environment variables

in the .ENV file, the environment variables are stored. The default values are as follows

```Dockerfile
# Orion variables
ORION_PORT=1026
ORION_VERSION=3.0.0

# MongoDB variables
MONGO_DB_PORT=27017
MONGO_DB_VERSION=4.4

# IoT Agent Ultralight Variables
ULTRALIGHT_VERSION=1.16.0-distroless
IOTA_NORTH_PORT=4041
IOTA_SOUTH_PORT=7896

# Tutorial variables
TUTORIAL_APP_PORT=3000
TUTORIAL_DUMMY_DEVICE_PORT=3001
```

[Top](#top)

### Elasticsearch Map Count

As stated in the [ElasticSearch documentation], the vm.max_map_count should be at least 262144. How you set vm.max_map_count depends on your platform

* Linux
  The ```vm.max_map_count``` setting should be set permanently in /etc/sysctl.conf:

```s
grep vm.max_map_count /etc/sysctl.conf
vm.max_map_count=262144
```

To apply the setting on a live system, run:

```s
sysctl -w vm.max_map_count=262144
```

* macOS with Docker for Mac
  The vm.max_map_count setting must be set within the xhyve virtual machine:

From the command line, run:

```s
screen ~/Library/Containers/com.docker.docker/Data/vms/0/tty
```

Press enter and use `sysctl` to configure ```vm.max_map_count```:

```s
sysctl -w vm.max_map_count=262144
```

To exit the screen session, type ```Ctrl a d```.

* Windows with Docker Desktop WSL 2 backend
  The ```vm.max_map_count``` setting must be set in the docker-desktop container:

```s
wsl -d docker-desktop
sysctl -w vm.max_map_count=262144
```

[ElasticSearch documentation]: https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html#_set_vm_max_map_count_to_at_least_262144 "Elasticsearch documentation: section Set vm.max_map_count"

[Top](#top)

## Starting the Docker containers

Go to the location of the ```docker-compose``` file and run it with the configured environment variables.

For example (in Windows Powershell)

[Top](#top)

### Navigate to the docker-compose location

```PowerShell
cd C:\opc_iot
```

[Top](#top)

### (optional) Download the containers

```PowerShell
docker-compose pull
```

Downloading the containers can take some time, depending on your internet connection. Be patient.

[Top](#top)

### Start the containers

```PowerShell
docker-compose --env-file .env up
```

If the containers will be automatically downloaded when they are not present. (That makes the pull optional).

[Top](#top)

## Configuring fiware IoT Agent

>| :exclamation: Take note of this       |
>|---------------------------------------|
>|From this moment in the readme, there is a lot of manual labour. This labour can, and should be automated. Configuring the server(s) by hand allowes room for error and the risk of typo's is high. We advise to create a program that can|
>
>- Automate the creation of curl command(s) for the IoT Agent
>- Automate the creation of curl command(s) for the Context Broker
>- Generate (the) Grafana dashboard(s)
>
>This readme describes how it's done by hand to explain the works, but don't advise to copy it. The sample project is small, but most machines are complex and have a lot of sensors and variables. If you want implement this for multiple machines, it will quickly pay off to automate this last path of the manual.

When all containers are running, it's time to configure the server to prepare it for your data.

[Top](#top)

### Creating a new fiware-service

If you remember our demo S88 project, we have data in our *Units*, *Equipment Modules* and *Control Modules*. The first thing we're going to configure is the Units.

```curl
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
     "entity_type": "_Unit",
     "resource":    "/"
   }
 ]
}'
```

First of all, we need to create a new fiware-service for all units. We call the service ```_units```. We've added a leading underscore ```_``` to make it more 'human readable' in the database (The fiware-service name will become the database name). The ```apikey``` is the S88 physical parent. In this case "High_Volume_Milling_Cell". We give the ```entity_type``` a uniqe name

[Top](#top)

### Configuring the IoT Agent

In the following example, we configure the MQTT message ```High_Volume_Milling_Cell\UN_machining``` to the fiware-service ```_units```. We define the variable *"g"* from the message ```High_Volume_Milling_Cell\UN_machining\attrs = g|value``` and give it the name *Count* and say it's an text type variable.

[Top](#top)

#### Configuring IoT Agent with one variable

```curl
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
```

[Top](#top)

#### Configuring IoT Agent with multiple variables

If we can do this with one variable, we can do it with more. Remember, the ```name``` is the 'new' name of the variable, as it will display in the MongoDB database.

```curl
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
```

[Top](#top)

## Configuring the Orion Context Broker

```curl
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
```

[Top](#top)

## Configuring Grafana

When you visit the Grafana webinterface for the first time, you will have to set a password for the default ```admin``` user. When this is done, you can configure the datasources.

[Top](#top)

### Add the datasources to Grafana

1. Go to the 'Configuration - cogwheel' in the vertical menu on the right, and select ```Data sources```.
![Add new datasource](/images/grafana_1.png)

2. Press the blue button ```Add data source```.
3. Select PostgreSQL.
4. Change the Name, Host, Database and User. Disable the TLS/SSL Mode
   - Host should correspond with the hostname of the crate-db container that was configured in the docker-compose file.
   - Database should start with ```mt``` followed by the fiware-services that are configured. To see the different databases, visit the Mongo-DB web interface on http://mongo-db:4200
   - User should be crate without an password
   - Disable the TLS/SSL Mode
5. Save & test the connection
![Configure ](/images/grafana_2.png)

[Top](#top)

### Creating a new dashboard

To create a new dashboard, click on the vertical menu.
![Add new dashboard](/images/grafana_3.png)

To show the data, we've made the following SQL-Query:

```SQL
SELECT 
  time_index AS "time",
  entity_id AS "Parent",
  entity_type AS "Type",
  CAST(bleedairstate AS FLOAT) AS bleedairstate,
  CAST(dustextractionstate AS FLOAT) AS DustextractionState,
  CAST(dustextractionpower AS FLOAT) AS Dustextractionpower
FROM etun_utilities
ORDER BY 1
```

We show the time of the values, show the ```entity_id``` as parent so we can rebuild our digital Twin and show the source of the values shown. Because we saved the values as Text in [Configuring IoT Agent with multiple variables](#configuring-iot-agent-with-multiple-variables) We have to cast the values as ```FLOAT``` to make them numeric

![Visualize the data](/images/grafana_4.png)

[Top](#top)

### Importing a dashboard

The final goal should be to generate the Grafana dashboard by an external program. The generated JSON can be imported by:

1. Click on the ```+``` sign in the vertical menu
2. And select ```Import``` in the submenu
![Import](/images/grafana_5.png)
3. Select the json file you've generated and click ```Import```
![Import](/images/grafana_6.png)
4. Your dashboard is imported.

[Top](#top)