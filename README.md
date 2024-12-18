# Hana.eco OnPrem deployment for Dong-il AL

This repo contains all necessary scripts along with documentation to deploy hanaeco in Dongil on prem server.

## Role of Hanaeco

Hanaeco will be used to periodically collect data from local MariaDB instance and send it to Hana.eco cloud instance. 

## Host Environment

The environment where the Hanaeco system will installed is as follows:
- Windows 11 Pro 
- RAM: 8GB
- HD: 512GB SSD

In addition to MariaDB, the server have a deamon server that collects data from different sensor devices.


## About this Repository: 

### Directory Structure

- ./documentations - Project 문서
- ./scripts - 플랫폼 배포하는데 사용되는 scripts 및 configuration 파일


### Documentation

The documentation are maintained under `documentation` folder and it uses [mkdocs](https://www.mkdocs.org/) to convention.

The `mkdocs` is a document markdown based project documentation framweork built on python. 

Installation of mkdocs (assuming python is already available)
```
pip install mkdocs
```

Starting mkdocs
IN the `documentation` 
```
mkdocs serve
```

### Scripts Quick Start

The scripts, including docker env files, docker compose are under `./scripts` folder.
