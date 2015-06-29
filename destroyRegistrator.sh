#!/bin/bash

REG_NAME=${REG_NAME:-reg}

docker stop ${REG_NAME}
docker rm -v ${REG_NAME}
