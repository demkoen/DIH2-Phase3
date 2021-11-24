# Step by step tutorial

## Contents

- [Dependencies](#dependencies)
- [Step 1](#step1)
- [Step 2](#step2)
- [Step 3](#step3)
- [Step 4](#step4)

[Top](#top)

## Dependencies

- Docker (Version 19.03.1+)
- Docker-compose (Version 1.24.1+)

Install docker and docker-compose by following the instructions available on the official web site:

- [Docker: https://docs.docker.com/install/linux/docker-ce/ubuntu/](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
- [Docker-Compose: https://docs.docker.com/compose/install/](https://docs.docker.com/compose/install/)

Once docker has been correctly installed you can continue with the other steps

## Step 1

First of all, prepare your machine for running the docker containers. This is explained in the [docker readme](docker-README.md) file in the docker folder.

## Step 2

In the next step, you have to setup and configure the IoT agent and the context broker. This is explained in the [installation guide](installationguide.md).

## Step 3

After installing and configuring the server and all docker containers are up and running, you can start to send messages to the server via MQTT in a JSON format.
How the messages should be presented and how the datamodel is defined is explained in the [api description](api.md).

## Step 4

Wel done. You've got the docker containers running, configugerd the IoT Agent and the context broker and can communicate between your machine and the NGSI context broker.
To debug, configure and play with your setup, a bunch of tools and tips are provided in the [user manual](usermanual.md).

[Top](#top)
