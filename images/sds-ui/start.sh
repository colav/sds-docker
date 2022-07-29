#!/bin/bash
#PROXY_BACKEND_HOST=`python3 -c "import socket;print(socket.gethostbyname('$SDS_PROXY_BACKEND_HOST'))"`
#export REACT_APP_API_URL="http://$PROXY_BACKEND_HOST:$SDS_PROXY_BACKEND_PORT"
service ssh start
if [[ -z "$BACKEND_HEARTBEAT" ]]; then
    ./check_backend  $BACKEND_HEARTBEAT
else
    ./check_backend  http://sds_backend:8080/app/home
fi
/usr/sbin/apache2ctl -D FOREGROUND
#service apache2 start
#npm start