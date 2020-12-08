docker-compose -f hdfs/docker-compose.yml "$@"
docker-compose -f kafka/docker-compose.yml "$@"
docker-compose -f spark/docker-compose.yml "$@"
