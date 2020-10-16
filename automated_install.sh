#!/bin/bash
cd /opt/

sudo apt-get update -y && sudo apt-get upgrade -y

sudo apt-get install -y wget

sudo wget https://github.com/slteksystemsllc/elastic_stack/raw/master/scripts/prereq.sh && sudo bash prereq.sh

sudo wget https://github.com/slteksystemsllc/elastic_stack/raw/master/scripts/initialize.sh && sudo bash initialize.sh

cd /usr/share/elastic_stack/

docker-compose up --no-start

