#!/bin/bash

if [ -z "${1}" ]; then
   version="latest"
else
   version="${1}"
fi

webport=$[8080+$[version]]

docker run -d --name Test-Web:"$[webport]" -p "$[webport]":8080 192.168.4.12:80/chenjun-nodejs-jsweb:"${version}"
