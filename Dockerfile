FROM maven:3.8.3-openjdk-17-slim

RUN apt update && apt upgrade -y
RUN apt install sudo -y
RUN apt install systemctl -y
RUN apt install -y gettext
RUN apt install jq -y
RUN curl -fsSL https://toolbelt.treasuredata.com/sh/install-ubuntu-focal-td-agent4.sh | sh

COPY fluent.conf /etc/td-agent/td-agent-template.conf
COPY target/*jar ./app.jar
COPY entrypoint.sh .

RUN td-agent-gem install fluent-plugin-newrelic

RUN ["chmod", "+x", "entrypoint.sh"]

ENTRYPOINT [ "sh", "entrypoint.sh" ]
















