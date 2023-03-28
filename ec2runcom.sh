#!/bin/sh
sudo su
cd /mavenwebapp
ls
aws s3 cp s3://mvnprojectbucket/ . --recursive
chmod +x target/sarvesh.jar
java -jar target/sarvesh.jar
