#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
docker-compose -f "$DIR"/hdfs/docker-compose.yml "$@"
docker-compose -f "$DIR"/kafka/docker-compose.yml "$@"
docker-compose -f "$DIR"/spark/docker-compose.yml "$@"
