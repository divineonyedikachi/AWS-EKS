#!/bin/bash

eksctl create cluster -f cluster-blue.yml

if [[ $? -ne 0 ]];
then
    echo "cluster creation failed"
else
    cluster_name="$(cat cluster-blue.yml | yq -r '.metadata.name')"; \
    eksctl utils set-public-access-cidrs --cluster=$cluster_name 10.0.0.0/8,167.118.0.0/16,192.168.200.0/24,192.168.170.0/24 --approve && \
    eksctl utils update-cluster-endpoints --cluster=$cluster_name --private-access=true --public-access=false --approve 

