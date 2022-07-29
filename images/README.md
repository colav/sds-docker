# Dockerfiles
System to create docker images


## Multi-container web app for azure
https://docs.microsoft.com/en-us/azure/app-service/tutorial-multi-container-app

# Docker hub
To upload images to docker hub please signin it first.
Otherwise  docker push colav/images.. will not work.

`
docker login
`

If you want only test it in local host with docker compose, login is not required.


## Building sds-mongodb
The first step is to copy the dump folder to sds-mongodb, the name of the folder inside dump, 
is going to be the name of the db in mongodb, the default name of the db is colombia.
Then run:

`
cd sds-mongodb 
`

`
docker build  --force-rm=true --no-cache=true -t colav/sds-mongodb:latest .
`

`
docker push colav/sds-mongodb:latest
`

## Building sds-backend

`
cd sds-backend
`

`
docker build  --force-rm=true --no-cache=true -t colav/sds-backend:latest .
`

`
docker push colav/sds-backend:latest
`

## Building sds-ui

`
cd sds-ui
`

`
docker build  --force-rm=true --no-cache=true -t colav/sds-ui:latest .
`

`
docker push colav/sds-ui:latest
`


