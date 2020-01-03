FROM ubuntu:18.04
MAINTAINER standash

# install dependencies
RUN apt-get update && \
    apt-get -y install git && \
    git clone https://github.com/offensive-security/exploitdb.git /opt/exploitdb && \
    sed 's|path_array+=(.*)|path_array+=("/opt/exploitdb")|g' /opt/exploitdb/.searchsploit_rc > ~/.searchsploit_rc && \
    ln -sf /opt/exploitdb/searchsploit /usr/local/bin/searchsploit

# add entrypoint
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
