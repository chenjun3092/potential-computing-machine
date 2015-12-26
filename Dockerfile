FROM  192.168.4.12:80/chenjun-nodejs-base:1.0
MAINTAINER chenjun <jun.chen@cloudsoar.com>

VOLUME noderoot
COPY ./src/* /noderoot/
#RUN wget https://get.docker.io/builds/Linux/x86_64/docker-latest -O /bin/docker
#RUN chmod +x /bin/docker
#WORKDIR /noderoot
CMD ["nodejs", "/noderoot/server.js"]
