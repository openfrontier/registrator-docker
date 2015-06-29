#!/bin/bash
set -e

REG_URI=$1
REG_NAME=${REG_NAME:-reg}

docker run \
--name ${REG_NAME} \
-d \
-v /var/run/docker.sock:/tmp/docker.sock \
-h $HOSTNAME gliderlabs/registrator \
${REG_URI}
