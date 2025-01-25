#!/bin/bash

# Errors are fatal
set -e

pushd $(dirname $0)/.. >/dev/null

docker-compose up -d

