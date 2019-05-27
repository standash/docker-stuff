FROM ubuntu:16.04
MAINTAINER standash

RUN apt-get update && \
    apt-get install -y software-properties-common less && \
    apt-add-repository ppa:octave/stable && \
    apt-get update && \
    apt-get install -y octave && \
    mkdir /code && \
    echo "graphics_toolkit(\"gnuplot\")" >> /root/.octaverc

CMD cd /code && bash
