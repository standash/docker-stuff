FROM ubuntu

MAINTAINER standash

# don't show any dialogs
ENV DEBIAN_FRONTEND=noninteractive

# Update packages
RUN dpkg --add-architecture i386 && \
    apt-get -y update && \
    apt-get -y install software-properties-common bzip2 ssh net-tools openssh-server socat curl && \
    apt-get -y update && \
    apt-get -y install openjdk-8-jdk && \
    apt-get -y install libc6:i386 && \
    apt-get -y install libstdc++6:i386 && \
    apt-get -y install zlib1g:i386 && \
    apt-get -y install tzdata unzip && \
    apt-get -y install python python-dev python-pip python-virtualenv python-tk && \
    rm -rf /var/lib/apt/lists/*

# Install Android SDK
RUN mkdir /usr/local/android-sdk && \
    wget -qO- https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip > sdk.zip && \
    unzip sdk.zip -d /usr/local/android-sdk && \
    rm sdk.zip && \
    chown -R root:root /usr/local/android-sdk/


# Set persistent environment variables
ENV NOTVISIBLE "in users profile"
ENV ANDROID_SDK_HOME="/usr/local/android-sdk"
ENV JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
ENV PATH=$PATH:${ANDROID_SDK_HOME}/tools/bin:${ANDROID_SDK_HOME}/tools:${ANDROID_SDK_HOME}/build-tools/28.0.1:${ANDROID_SDK_HOME}/platform-tools:${JAVA_HOME}/bin

# Install latest android tools and system images
RUN ( sleep 4 && while [ 1 ]; do sleep 1; echo y; done ) | sdkmanager "emulator" "build-tools;28.0.1" "platform-tools" "platforms;android-19" "system-images;android-19;google_apis;x86"

# Create fake keymap file
RUN mkdir /usr/local/android-sdk/tools/keymaps && \
    touch /usr/local/android-sdk/tools/keymaps/en-us

ADD /hardware_configs /hardware_configs

# add entrypoint
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
