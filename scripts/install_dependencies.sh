#!/bin/bash
set -e
sudo yum update -y
sudo yum install nodejs -y
sudo npm install forever -g