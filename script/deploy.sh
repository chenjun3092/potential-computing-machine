#!/bin/bash

if [ -z "${1}" ]; then
   incre=0
else
   incre="${1}"
fi

webport=$[8080+$[incre]]

docker run -d --name Test-Web-"$[webport]" -p "$[webport]":8080 192.168.180.100:80/chenjun-nodejs-jsweb:"${incre}"
