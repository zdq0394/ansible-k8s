#! /usr/bin/sh
# serviceacount
openssl genrsa -out keys/serviceaccount.key 2048
openssl req -new -key keys/serviceaccount.key -subj "/CN=serviceaccount" -out keys/serviceaccount.csr
openssl x509 -req -in keys/serviceaccount.csr -CA keys/ca.crt -CAkey keys/ca.key -CAcreateserial -out keys/serviceaccount.crt -days 10000