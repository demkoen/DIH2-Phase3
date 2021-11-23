# DIH² Phase 3

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Documentation Status](https://readthedocs.org/projects/dih2-phase3/badge/?version=latest)](https://dih2-phase3.readthedocs.io/en/latest/?badge=latest)
[![CI](https://github.com/ramp-eu/TTE.project1/workflows/CI/badge.svg)](https://github.com/ramp-eu/TTE.project1/actions?query=workflow%3ACI)
[![Coverage Status](https://coveralls.io/repos/github/demkoen/DIH2-Phase3/badge.svg?branch=main)](https://coveralls.io/github/demkoen/DIH2-Phase3?branch=main)
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/f35cba565a1f4dc0a2fc4f8e4f8a1e72)](https://www.codacy.com/gh/demkoen/DIH2-Phase3/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;ytm_content=demkoen/DIH2-Phase3&amp;utm_campaign=Badge_Grade)
[![CII Best Practices](https://bestpractices.coreinfrastructure.org/projects/5399/badge)](https://bestpractices.coreinfrastructure.org/projects/5399)
[![NGSI v2](https://img.shields.io/badge/NGSI-v2-5dc0cf.svg)](https://fiware-ges.github.io/orion/api/v2/stable/)
[![Support badge](https://nexus.lab.fiware.org/repository/raw/public/badges/stackoverflow/fiware.svg)](https://stackoverflow.com/questions/tagged/fiware)

```text

The Badges above demonstrate testing, code coverage
and commitment to coding standards (since the code is linted on commit).

The links need to be amended to point to the correct repo.

Sign up for:

- CI Test system - e.g. GitHub Actions, Travis
- A Documentation website - e.g. ReadTheDocs
- Static Code Analysis tool - e.g. Codacy
- CII Best Practices https://bestpractices.coreinfrastructure.org

Only CII Best Practices (and its badge) is mandatory. Any equivalent public automated tools for the other three may be used.

Note that the CII Best Practices questionaire will request evidence of tooling used.

```

This project is part of [DIH^2](http://www.dih-squared.eu/). For more information check the RAMP Catalogue entry for the
[components](https://github.com/xxx).

| :books: [Documentation](https://tte-project1.readthedocs.io/en/latest/) | :whale: [Docker Hub](https://hub.docker.com/r/link-to-docker) |
| --------------------------------------------- | ------------------------------------------------------------- |

## Contents

- [Background](#background)
- [Install](#install)
- [Usage](#usage)
- [API](#api)
- [Testing](#testing)
- [License](#license)

## Background

A Smart Machine Base (SMB) was developed by Demcon, consisting of a generic machine platform with standardized controls. Part of the project was the development of an IoT agent which is able to listen to the machine on its south port and present some OEE and sensor data to the FIWARE Context Broker. This information can then in turn be used for MES, remote diagnosis etc.

## Install

How to install the component

Follow the [Step by step tutorial](step_by_step_tutorial.md) to help setting up and configuring the server.

Information about how to install (sub)components can be found at the corresponding section of the
[Installation & Administration Guide](installationguide.md).

A `docker-compose` file is also available for your use - further information can be found [here](docker-README.md)

## Usage

How to use the component

Information about how to use the component can be found in the [User & Programmers Manual](usermanual.md).

## API

Information about the API can be found in the [API documentation](api.md).

## Testing

How to test the component

For performing a basic end-to-end test, you have to follow the step below. A detailed description about how to run tests can be found in the [User & Programmers Manual](usermanual.md).

## License

[MIT](LICENSE) © <TTE>
