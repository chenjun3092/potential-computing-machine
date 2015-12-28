#!/bin/bash

if [ -z "${1}" ]; then
   version="latest"
else
   version="${1}"
fi

docker run 192.168.4.12:80/chenjun-nodejs-jsweb:"${version}"
#   hostport = 8080+"${version}"
docker run -d --name CI-jenkins-"${version}" --privileged -p 8080+"${version}":8080 -v /var/lib/docker/:/var/lib/docker/ -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker 192.168.4.12:80/chenjun-nodejs-jsweb:"${version}"

