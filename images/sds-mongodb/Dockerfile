FROM ubuntu:focal

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get -y  install mongodb

COPY dump /tmp/dump

WORKDIR /tmp

RUN service mongodb start && mongorestore 

COPY mongodb.conf /etc/mongodb.conf

RUN rm -rf dump

EXPOSE 27017

ENTRYPOINT ["mongod"]

CMD ["-f","/etc/mongodb.conf"]



