FROM ubuntu

MAINTAINER standash 

# Update packages
RUN apt-get -y update && \
    apt-get -y install git python python-pip libsparsehash-dev libmuparser-dev libsnappy-dev bzip2 zlib1g-dev wget && \
    rm -rf /var/lib/apt/lists/* && \
    wget https://github.com/androguard/androguard/archive/v2.0.tar.gz && \
    tar -xvf v2.0.tar.gz &&\
	pip install "/androguard-2.0" && \
    mkdir "/androguard-2.0/apk_folder"
