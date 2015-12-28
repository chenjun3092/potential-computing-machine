#!/bin/bash

if [ -z "${1}" ]; then
   version="latest"
else
   version="${1}"
fi

webport=$[8080+$[version]]
#echo $[webport]
#docker run -d --name CI-jenkins-"${version}" --privileged -p "$[webport]":8080 -v /var/lib/docker/:/var/lib/docker/ -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker 192.168.4.12:80/chenjun-nodejs-jsweb:"${version}"

#docker run 192.168.4.12:80/chenjun-nodejs-jsweb:"${version}"
docker run -d --name Testing-Web-"${version}" -p "$[webport]":8080 192.168.4.12:80/chenjun-nodejs-jsweb:"${version}"
