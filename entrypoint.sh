#!/bin/bash
envsubst < /etc/td-agent/td-agent-template.conf > /etc/td-agent/td-agent.conf
sudo systemctl start td-agent.service
# echo "test message" >> logs.log
# sudo systemctl status td-agent.service

java -jar app.jar 2>&1 | tee -a /logs.log
