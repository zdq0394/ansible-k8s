#! /usr/bin/sh
#server
openssl genrsa -out keys/server.key 2048
openssl req -new -key keys/server.key -out keys/server.csr -config csr.conf
openssl x509 -req -in keys/server.csr -CA keys/ca.crt -CAkey keys/ca.key \
-CAcreateserial -out keys/server.crt -days 10000 \
-extensions v3_ext -extfile csr.conf
# verify
openssl x509  -noout -text -in ./keys/server.crt
