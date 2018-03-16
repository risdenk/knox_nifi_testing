#!/usr/bin/env bash

set -e
set -u

source ${NIFI_BASE_DIR}/scripts/common.sh

prop_replace 'nifi.web.proxy.context.path' 'gateway/default/nifi-app'

${NIFI_BASE_DIR}/scripts/start.sh

