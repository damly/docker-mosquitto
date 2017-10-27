FROM centos:7

LABEL maintainer "8051263@qq.com"

ENV AUTH_USERNAME= \
    AUTH_PASSWORD= 

RUN yum -y install epel-release

RUN yum -y install mosquitto

COPY conf/*.* /etc/mosquitto/

COPY start.sh /usr/bin/

#make the start.sh executable 
RUN chmod 777 /usr/bin/start.sh

ENTRYPOINT ["/usr/bin/start.sh"]
CMD ["mosquitto"]
