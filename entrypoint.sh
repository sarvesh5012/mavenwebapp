#!/bin/bash
sudo systemctl start td-agent.service
echo "test message" >> logs.log
# sudo systemctl status td-agent.service

# java -jar app.jar 2>&1 | tee -a /logs.log
