#!/usr/bin/env bash

BASEDIR=$(dirname "$0")
/usr/bin/docker-compose $(find $BASEDIR/docker* | sed -e 's/^/-f /') "$@"