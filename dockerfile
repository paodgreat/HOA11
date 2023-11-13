FROM ubuntu

MAINTAINER paulo <qpsabregunda@tip.edu.ph>

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update; apt dist-upgrade -y

RUN apt install apache2 -y; apt install apache2-utils -y

RUN apt install mysql-server -y

ENTRYPOINT apache2ctl -D FOREGROUND: mysql -D FOREGROUND
