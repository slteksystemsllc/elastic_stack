#!/bin/bash
cd /opt/

git clone https://github.com/slteksystemsllc/elastic_stack.git

sudo chown 1000:1000 -R /opt/elastic_stack/
#######################################################
# Elasticsearc Pre-Config

mkdir -p /usr/share/elastic_stack/
mkdir -p /usr/share/elastic_stack/cron/custom-cron/

sudo chown 1000:1000 -R /usr/share/elastic_stack/

cp -f /opt/elastic_stack/docker-compose.yml.example /usr/share/elastic_stack/docker-compose.yml
cp -f /opt/elastic_stack/cron/custom-cron.example /usr/share/elastic_stack/cron/custom-cron/

#########################################################
# Logstash Pre-Config 

mkdir -p /usr/share/logstash/
mkdir -p /usr/share/logstash/bin/
mkdir -p /usr/share/logstash/config/
mkdir -p /usr/share/logstash/configs/
mkdir -p /usr/share/logstash/custom_patterns/
mkdir -p /usr/share/logstash/dictionaries/
mkdir -p /usr/share/logstash/persistent_data/
mkdir -p /usr/share/logstash/pipeline/
mkdir -p /usr/share/logstash/plugins/
mkdir -p /usr/share/logstash/rules/

sudo chown 1000:1000 -R /usr/share/logstash/

cp -r /opt/elastic_stack/logstash/logstash_configs/* /usr/share/logstash/configs/
cp -r /opt/elastic_stack/logstash/dictionaries/* /usr/share/logstash/dictionaries/
cp -f /opt/elastic_stack/logstash/pipelines.yml.example /usr/share/logstash/config/pipelines.yml
cp -r /opt/elastic_stack/logstash/rules/* /usr/share/logstash/rules/


############################################################
# Elastalert Pre-Config

mkdir -p /usr/share/elastalert/
mkdir -p /usr/share/elastalert/config/
mkdir -p /usr/share/elastalert/rules/
mkdir -p /usr/share/elastalert/rule_templates/
mkdir -p /usr/share/elastalert/elastalert-server/config/

sudo chown 1000:1000 -R /usr/share/elastalert/

cp -r /opt/elastic_stack/elastalert/example_rules/* /usr/share/elastalert/rules/
cp -f /opt/elastic_stack/elastalert/config.yaml.example /usr/share/elastalert/config.yaml
cp -f /opt/elastic_stack/elastalert/config.json /usr/share/elastalert/elastalert-server/config/config.json

cd /usr/share/elastic_stack/

docker-compose up --no-start
