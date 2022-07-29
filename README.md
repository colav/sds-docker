<center><img src="https://raw.githubusercontent.com/colav/colav.github.io/master/img/Logo.png"/></center>

# sds-docker
SecSalud Dockerfiles to create images

# Build images
Take a look at README.md at folder images.

# Testing
To test the system package locally, docker and docker-compose is required.
* https://docs.docker.com/engine/install/ubuntu/
* https://docs.docker.com/compose/install/

Run in the folder sds-docker

`
docker-compose up
`


# Azure Deploy
Install azure cli
* https://docs.microsoft.com/fr-fr/cli/azure/install-azure-cli-linux?pivots=apt

login

`
az login
`

set the right subscription

`
az account list --output table
`

`
az account set --subscription xxxxxx-yyyyy-zzzzzzz
`

create a plan (https://azure.microsoft.com/en-us/pricing/details/app-service/linux/)

`
az appservice plan create --name sdsAppServicePlan --resource-group RG-AEU-SDS-QA-OBSE --sku B3 --is-linux
`

Deploy the app

`
az webapp create --resource-group RG-AEU-SDS-QA-OBSE --plan sdsAppServicePlan --name sds-investigacion --multicontainer-config-type compose --multicontainer-config-file docker-compose.yml
`


**NOTE**:

It takes a while starting the service in azure,
you can check at https://sds-investigacion.azurewebsites.net/app