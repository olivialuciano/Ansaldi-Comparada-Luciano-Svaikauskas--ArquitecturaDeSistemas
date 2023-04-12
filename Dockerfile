FROM ubuntu:20.04 
ARG DEBIAN_FRONTEND=noninteractive

USER root

RUN apt-get update
RUN apt-get install -y vim
RUN apt-get install apache2 -y

WORKDIR /var/www/html

COPY ./index.html .

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

