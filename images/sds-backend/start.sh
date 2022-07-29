#!/bin/bash
if [[ -z "$MONGODB_IP" ]]; then
    ./check_mongodb $MONGODB_IP
else
    ./check_mongodb sds_mongodb
fi

sds_server --db colombia --db_ip sds_mongodb