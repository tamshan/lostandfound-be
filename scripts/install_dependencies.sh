#!/bin/bash
set -e
yum update -y
sudo apt-get update
sudo apt-get install nodejs -y
sudo npm install forever -g