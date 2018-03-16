#!/bin/sh

set -e
set -o pipefail

/knox/bin/gateway.sh start

sleep 10

keytool -importkeystore -destkeypass knoxmaster -srckeystore /certs/knox/keystore.jks -destkeystore /knox/data/security/keystores/gateway.jks -deststoretype JKS -srcstorepass keystore -deststorepass knoxmaster -noprompt
keytool -importkeystore -srckeystore /certs/knox/truststore.jks -destkeystore /knox/data/security/keystores/gateway.jks -deststoretype JKS -srcstorepass truststore -deststorepass knoxmaster -noprompt

/knox/bin/gateway.sh stop
/knox/bin/gateway.sh start 

tail -f /knox/logs/*

