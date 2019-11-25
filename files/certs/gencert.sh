#! /usr/bin/sh
export MASTER_IP=192.168.56.101
# ca
# MASTER_IP是主节点的IP
openssl genrsa -out keys/ca.key 2048
openssl req -x509 -new -nodes -key keys/ca.key -subj "/CN=${MASTER_IP}" -days 10000 -out keys/ca.crt



