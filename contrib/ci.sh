#!/bin/bash

docker swarm init --advertise-addr=$(hostname -i)

./deploy_stack.sh

git clone https://github.com/openfaas/certify-incubator
cd certify-incubator && \
   make

exit 0