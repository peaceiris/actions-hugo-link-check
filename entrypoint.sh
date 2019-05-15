#!/bin/bash

LINE='##############################'
MSGS='####### start action #########'

LOCAL_HOST="http://localhost:1313"

echo ${LINE}
echo ${MSGS}
echo ${LINE}

hugo server > /dev/null &
for i in `seq 0 600`; do # 5 min
    sleep 0.5
    IS_SERVER_RUNNING=$(curl -LI ${LOCAL_HOST} -o /dev/null -w '%{http_code}' -s)
    if [[ "${IS_SERVER_RUNNING}" == "200" ]]; then
        break
    fi
    echo "error: time out" && exit 1
done
eval muffet ${OPTIONS} ${LOCAL_HOST}
