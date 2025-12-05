#!/bin/bash

set -e

mkdir -p autogen/d1 autogen/d2

cat <<EOF >autogen/d1/Dockerfile
FROM alpine:latest
ENTRYPOINT ["echo", "d1"]
EOF

cat <<EOF >autogen/d2/Dockerfile
FROM alpine:latest
ENTRYPOINT ["echo", "d2"]
EOF

cat <<EOF >autogen/docker-compose.yml
services:
  d1:
    build:
      context: d1
  d2:
    build:
      context: d2
EOF
