#!/bin/bash
cd /opt/

git clone https://github.com/slteksystemsllc/elastic_stack.git

sudo chown 1000:1000 -R /opt/elastic_stack/

mkdir -p /etc/nsm/rules/
mkdir -p /opt/logstash_configs/
mkdir -p /usr/share/logstash/config/
mkdir -p /usr/share/logstash/configs/
mkdir -p /usr/share/logstash/data/

cp -f /opt/elastic_stack/docker-compose.yml.example /opt/elastic_stack/docker-compose.yml
cp -f /opt/elastic_stack/cron/custom-cron.example /opt/elastic_stack/cron/custom-cron
cp -r /opt/elastic_stack/logstash/logstash_configs/* /opt/logstash_configs/
cp -f /opt/elastic_stack/logstash/pipelines.yml.example /usr/share/logstash/config/pipelines.yml

cd /opt/elastic_stack

docker-compose up --no-start
