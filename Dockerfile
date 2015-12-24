FROM 192.168.2.35:80/chenjun_nodejs:1.0
MAINTAINER chenjun <jun.chen@cloudsoar.com>

VOLUME noderoot
COPY ./src/* /noderoot/
#WORKDIR /noderoot
CMD ["nodejs", "/noderoot/server.js"]
