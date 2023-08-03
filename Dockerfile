FROM nginx

MAINTAINER "nidhikashyap168@gmail.com"

RUN apt-get update && apt-get upgrade -y && apt-get -y install net-tools

RUN useradd -m -d /home/jerry -s /bin/bash jerry
WORKDIR /home/jerry
ADD target/nature4.war .
WORKDIR /

ENTRYPOINT service nginx start && bash

