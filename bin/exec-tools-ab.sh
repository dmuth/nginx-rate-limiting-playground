#!/bin/bash

# Errors are fatal
set -e

pushd $(dirname $0)/.. >/dev/null

docker-compose exec -it tools /usr/bin/ab $@ http://nginx/

