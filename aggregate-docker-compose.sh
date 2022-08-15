#!/usr/bin/env bash

BASEDIR=$(dirname "$0")
export $(awk 1 $BASEDIR/.env/*.env | xargs) && /usr/bin/docker compose $(find $BASEDIR/docker* | sed -e 's/^/-f /') "$@"
