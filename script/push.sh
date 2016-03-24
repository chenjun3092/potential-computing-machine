#!/bin/bash

if [ -z "${1}" ]; then
   version="latest"
else
   version="${1}"
fi

docker push 192.168.180.100:80/chenjun-nodejs-jsweb:"${version}"
