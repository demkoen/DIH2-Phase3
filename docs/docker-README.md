# Contents

- [Preparations](#Preparations)
  - [Environment variables](#environment-variables)
  - [Elasticsearch Map Count](#elasticsearch-map-count)
- [Starting the Docker containers](#starting-the-docker-containers)
  - [Navigate to the docker-compose location](#navigate-to-the-docker-compose-location)
  - [(optional) Download the containers](#optional-download-the-containers)
  - [Start the containers](#start-the-containers)

## Preparations

Before starting the docker containers, some settings have to be checked.

### Environment variables

in the .ENV file, the environment variables are stored. The default values are as follows. Change them to your liking, but remember that the manual(s) and screenshot(s) are made with this configuration.

```Dockerfile
# Orion variables
ORION_PORT=1026
ORION_VERSION=3.0.0

# MongoDB variables
MONGO_DB_PORT=27017
MONGO_DB_VERSION=4.4

# IoT Agent Variables
IOTAGENT_JSON_VERSION=1.18.0-distroless
IOTA_NORTH_PORT=4041
IOTA_SOUTH_PORT=7896

# Tutorial variables
TUTORIAL_APP_PORT=3000
TUTORIAL_DUMMY_DEVICE_PORT=3001
```

An example of the .ENV file can be found at [docker/.env](https://github.com/demkoen/DIH2-Phase3/tree/main/docs/docker/.env).

[Top](#top)

### Docker Compose file

Compose is a tool for defining and running multi-container Docker applications. With Compose, you use a YAML file to configure your application’s services. Then, with a single command, you create and start all the services from your configuration. To learn more about all the features of Compose, [see the list of features](https://docs.docker.com/compose/#features).

An example of the docker compose file can be found at [docker/docker-compose.yml](https://github.com/demkoen/DIH2-Phase3/tree/main/docs/docker/docker-compose.yml).

```Dockerfile
version: "3.5"
services:
  # Orion is the context broker
  orion:
    image: fiware/orion:3.0.0
    hostname: orion
    container_name: fiware-orion
    depends_on:
      - mongo-db
    networks:
      - default
    expose:
      - "${ORION_PORT}"
    ports:
      - "${ORION_PORT}:${ORION_PORT}" # localhost:1026
    command: -dbhost mongo-db -logLevel NONE
    healthcheck:
      test: curl --fail -s http://orion:${ORION_PORT}/version || exit 1
      interval: 5s

  # IoT-Agent is configured for the JSON Protocol
  # 

  iot-agent:
    image: fiware/iotagent-json:${IOTAGENT_JSON_VERSION}
    hostname: iot-agent
    container_name: fiware-iot-agent
    depends_on:
      - mongo-db
      - mosquitto
    networks:
      - default
    expose:
      - "${IOTA_NORTH_PORT}"
    ports:
      - "${IOTA_NORTH_PORT}:${IOTA_NORTH_PORT}" # localhost:4041
    environment:
      - IOTA_CB_HOST=orion # name of the context broker to update context
      - IOTA_CB_PORT=${ORION_PORT} # port the context broker listens on to update context
      - IOTA_NORTH_PORT=${IOTA_NORTH_PORT}
      - IOTA_REGISTRY_TYPE=mongodb #Whether to hold IoT device info in memory or in a database
      - IOTA_LOG_LEVEL=FATAL # The log level of the IoT Agent
      - IOTA_TIMESTAMP=true # Supply timestamp information with each measurement
      - IOTA_CB_NGSI_VERSION=v2 # use NGSIv2 when sending updates for active attributes
      - IOTA_AUTOCAST=true # Ensure Ultralight number values are read as numbers not strings
      - IOTA_MONGO_HOST=mongo-db # The host name of MongoDB
      - IOTA_MONGO_PORT=${MONGO_DB_PORT} # The port mongoDB is listening on
      - IOTA_MONGO_DB=iotagentul # The name of the database used in mongoDB
      - IOTA_MQTT_HOST=mosquitto # The host name of the MQTT Broker
      - IOTA_MQTT_PORT=1883 # The port the MQTT Broker is listening on to receive topics
      - IOTA_DEFAULT_RESOURCE= # Default is blank. I'm using MQTT so I don't need a resource
      - IOTA_PROVIDER_URL=http://iot-agent:${IOTA_NORTH_PORT}
    healthcheck:
      interval: 5s

  # Database
  mongo-db:
    image: mongo:${MONGO_DB_VERSION}
    hostname: mongo-db
    container_name: db-mongo
    expose:
      - "${MONGO_DB_PORT}"
    ports:
      - "${MONGO_DB_PORT}:${MONGO_DB_PORT}" # localhost:27017
    networks:
      - default
    volumes:
      - mongo-db:/data
    healthcheck:
      test: |
        host=`hostname --ip-address || echo '127.0.0.1'`; 
        mongo --quiet $host/test --eval 'quit(db.runCommand({ ping: 1 }).ok ? 0 : 2)' && echo 0 || echo 1
      interval: 5s 
      
  crate-db:
    image: crate:latest
    hostname: crate-db
    ports:
        - "4200:4200"
        - "4300:4300"
        - "5432:5432"
    networks:
      - default  
       
  quantumleap:
    hostname: quantumleap
    image: smartsdk/quantumleap
    ports:
        - "8668:8668"
    depends_on:
        - crate-db
    environment:
        - CRATE_HOST=crate-db
    networks:
      - default
        
  grafana:
    image: grafana/grafana
    depends_on:
        - crate-db
    ports:
        - "3003:3000"
    networks:
      - default
      
  # Other services
  mosquitto:
    image: eclipse-mosquitto:1.6.14
    hostname: mosquitto
    container_name: mosquitto
    expose:
      - "1883"
      - "9001"
    ports:
      - "1883:1883"
      - "9001:9001"
    volumes:
      - ./mosquitto/mosquitto.conf:/mosquitto/config/mosquitto.conf
    networks:
      - default
networks:
  default:
    ipam:
      config:
        - subnet: 172.18.1.0/24

volumes:
  mongo-db: ~
```

[Top](#top)

### Elasticsearch Map Count

As stated in the [ElasticSearch documentation], the vm.max_map_count should be at least 262144. How you set vm.max_map_count depends on your platform

- Linux
  The ```vm.max_map_count``` setting should be set permanently in /etc/sysctl.conf:

```s
grep vm.max_map_count /etc/sysctl.conf
vm.max_map_count=262144
```

To apply the setting on a live system, run:

```s
sysctl -w vm.max_map_count=262144
```

- macOS with Docker for Mac
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

- Windows with Docker Desktop WSL 2 backend
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