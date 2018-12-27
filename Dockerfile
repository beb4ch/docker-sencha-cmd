FROM adoptopenjdk/openjdk10

MAINTAINER Mladen Maravic <beb4ch@gmail.com>

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get update && apt-get install -y nodejs \ 
    && curl -sS http://cdn.sencha.com/cmd/6.6.0.13/no-jre/SenchaCmd-6.6.0.13-linux-amd64.sh.zip > /tmp/sencha.zip \
    && unzip /tmp/sencha.zip -d /tmp \
    && /tmp/SenchaCmd*.sh -q --all \
    && rm /tmp/SenchaCmd*.sh

ENTRYPOINT ["/root/bin/Sencha/Cmd/6.6.0.13/sencha"]

WORKDIR /code
