# Knox NiFi

[![Build Status](https://travis-ci.org/risdenk/knox_nifi_testing.svg?branch=master)](https://travis-ci.org/risdenk/knox_nifi_testing)

## Getting Started
1. `docker-compose up -d`
2. `docker-compose down -v --remove-orphans --rmi=all`

### Development
#### Rebuild Knox image
1. `docker-compose -f docker-compose.yml -f docker-compose-dev.yml build`
2. `docker-compose -f docker-compose.yml -f docker-compose-dev.yml up -d`
3. Check the URLs above.

## References
* https://cwiki.apache.org/confluence/display/KNOX/Proxying+a+UI+using+Knox
* https://issues.apache.org/jira/browse/KNOX-528

