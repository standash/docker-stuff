FROM ubuntu:16.04
MAINTAINER standash

RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386 g++-multilib build-essential gdb git bison && \
    echo "set disassembly-flavor intel" > ~/.gdbinit && \
    echo "alias gdb='gdb -q'" >> ~/.bashrc && \
    echo "alias gcc='gcc -m32'" >> ~/.bashrc && \
    mkdir /code

CMD cd /code && bash
