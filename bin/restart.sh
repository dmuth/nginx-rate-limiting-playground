#!/bin/bash

# Errors are fatal
set -e

pushd $(dirname $0)/.. >/dev/null

function print_syntax() {

    echo "!"
    echo "! Syntax: $0 (CONTAINER | all ) [ CONTAINER [...]]"
    echo "!"
    echo "! all - Restart all containers"
    echo "!"

    exit 1

} # End of print_syntax()

if test ! "$1"
then
    print_syntax
fi

if test "$1" == "all"
then
    shift
fi

docker-compose restart $@

