# Apache Knox proxying Apache NiFi

[![Build Status](https://travis-ci.org/risdenk/knox_nifi_testing.svg?branch=master)](https://travis-ci.org/risdenk/knox_nifi_testing)

## Getting Started
1. `docker-compose up -d`
2. Navigate to `https://localhost:8443/gateway/default/nifi-app/nifi`
3. `docker-compose down -v --remove-orphans --rmi=all`

## Development
### Rebuild Knox & NiFi images
1. `docker-compose -f docker-compose.yml -f docker-compose-dev.yml build`
2. `docker-compose -f docker-compose.yml -f docker-compose-dev.yml up -d`

### Generate TLS/SSL Certificates
1. Download NiFi TLS Toolkit
2. Extract NiFi TLS Toolkit
3. Go to the NiFi TLS Toolkit Directory
4. Generate certs
    * `./bin/tls-toolkit.sh standalone --hostnames nifi,knox --isOverwrite --outputDirectory ../certs --trustStorePassword truststore --keyStorePassword keystore --keyStoreType jks`

## References
* https://issues.apache.org/jira/browse/KNOX-970

