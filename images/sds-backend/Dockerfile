FROM ubuntu:focal

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get -y  install nodejs npm

RUN DEBIAN_FRONTEND=noninteractive apt-get -y  install python3 python3-dev python3-pip git

RUN apt-get clean

RUN npm install -g apidoc@0.29.0

WORKDIR /

RUN git clone -b main https://github.com/colav/sds-backend

WORKDIR /sds-backend

RUN pip install .

# no se puede borrar el paquete y se tiene que correr en el directorio donde esta el 
#File "/usr/local/lib/python3.8/dist-packages/sds/plugins/HomeApp.py", line 16, in __init__
#sds_backend     |     self.geojson=json.load(open("sds/etc/bogota.json","r"))
#sds_backend     | FileNotFoundError: [Errno 2] No such file or directory: 'sds/etc/bogota.json'
#WORKDIR /
#RUN rm -rf /sds-backend

RUN pip install pymongo==3.7.0


EXPOSE 8080

COPY check_mongodb /sds-backend/check_mongodb
COPY start.sh /sds-backend/start.sh
CMD ./start.sh
