# 2024/12 Dongil: hana.eco branding and deployment

[Synopsys of the engagement]

* Start Date: 2024/12/20
* End Date: 
* Partner: 

* HanaLoop:
    * Contact: 안영석 CTO  - ys.ahnpark@hanaloop.com


## Configuring

Modify `/scripts/.env.docker-compose-onprem` environment 
- `AUTH0_ISSUER_URL`  The IDP provider's URL
- `ECOLOOP_WEB_IMAGE` The Hanaeco web server docker image name with the proper version
- `ECOLOOP_SERVER_IMAGE` The Hanaeco backend server docker image name with the proper version
- `STORAGE_LOCATION_ROOT` The absolute path where the updated file will be stored (need full write access)
- `ECOLOOP_ML_IMAGE`  The Hanaeco machine learning docker image
- `OPENAI_API_KEY` The OpenAI key for chat


Other configuration will not require to be modified, but for explanation purpose:
- ECOLOOP_WEB_EXPOSE_PORT
- BAPI_BASE_URL


## Starting and stopping Hanaeco

### Start
Prior starting the applications, make sure:
1. All the ports are available: 80 (http), 5432 (postgres)

Go to `/scripts`

```sh
./services-up.sh
```


### Stop

```sh
./services-down.sh
```
