#!/bin/bash

#ElasticSearch
apt-get update
apt-get install -y docker.io
docker pull docker.elastic.co/elasticsearch/elasticsearch:7.6.2
docker images
docker run -d --name elasticsearch -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.6.2
curl -X GET "http://127.0.0.1:9200/"
curl -X GET "localhost:9200/_cluster/health?wait_for_status=yellow&timeout=50s&pretty"
#docker logs elasticsearch
#docker stop  elasticsearch
#docker rm   elasticsearch
