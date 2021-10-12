# DIH² Phase 3

## Contents

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