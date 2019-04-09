FROM robertdebock/docker-centos-openssh
MAINTAINER Mike Bertram <bertram@nexus-netsoft.com>

RUN echo 'root:nexus123' | chpasswd \
    && groupdel tape \
    && groupadd -g 1000 application \
    && usermod -g application root

WORKDIR /app