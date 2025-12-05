#!/bin/bash

set -e

if ! [ -d autogen ] ; then
  echo 'Please run `./step1.sh` first.'
  exit 1
fi

docker compose -f autogen/docker-compose.yml up --build
