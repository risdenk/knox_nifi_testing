#!/bin/sh

set -e
set -o pipefail

java -jar /knox/bin/ldap.jar /knox/conf

