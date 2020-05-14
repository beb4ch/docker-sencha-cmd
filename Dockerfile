FROM adoptopenjdk/openjdk8:x86_64-ubuntu-jdk8u202-b08

MAINTAINER Mladen Maravic <beb4ch@gmail.com>

RUN apt-get update && apt-get install -y apt-utils gnupg2 unzip fontconfig \
    && curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get update && apt-get install -y nodejs \ 
    && curl -sS http://cdn.sencha.com/cmd/7.2.0.66/no-jre/SenchaCmd-7.2.0.66-linux-amd64.sh.zip > /tmp/sencha.zip \
    && unzip /tmp/sencha.zip -d /tmp \
    && /tmp/SenchaCmd*.sh -q --all \
    && mkdir /extjs \
    && rm /tmp/SenchaCmd*.sh \
    && rm /tmp/sencha.zip

ENTRYPOINT ["/root/bin/Sencha/Cmd/7.2.0.66/sencha"]

WORKDIR /code
