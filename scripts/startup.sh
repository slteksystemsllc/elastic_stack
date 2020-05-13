#!/bin/bash

sudo apt-get install -y wget
sudo wget https://github.com/slteksystemsllc/elastic_stack/raw/master/scripts/prereq.sh
sudo bash prereq.sh
sudo wget https://github.com/slteksystemsllc/elastic_stack/raw/master/scripts/initialize.sh
sudo bash initialize.sh
cd /opt/elastic_stack/
sudo docker-compose up -d






