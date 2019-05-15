FROM ubuntu:16.04
MAINTAINER standash

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-add-repository ppa:octave/stable && \
    apt-get update && \
    apt-get install -y octave && \
    mkdir /code

CMD cd /code && bash
