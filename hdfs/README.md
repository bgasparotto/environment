# Hadoop DFS environment
If you need your HDFS accessible from your host machine for:

* Accessing the web file browser;
* Locally Running an application that connects to the HDFS.

Then map both container ids do your `localhost` after starting the containers:
```shell script
docker container ps
CONTAINER ID        IMAGE                                             COMMAND                  CREATED             STATUS                   PORTS                                            NAMES
f93e37e51545        bde2020/hadoop-datanode:2.0.0-hadoop3.1.3-java8   "/entrypoint.sh /run…"   2 minutes ago       Up 2 minutes (healthy)   0.0.0.0:9864->9864/tcp, 0.0.0.0:9866->9866/tcp   datanode
60d33697e89e        bde2020/hadoop-namenode:2.0.0-hadoop3.1.3-java8   "/entrypoint.sh /run…"   2 minutes ago       Up 2 minutes (healthy)   0.0.0.0:9000->9000/tcp, 0.0.0.0:9870->9870/tcp   namenode
```

To your `/etc/hosts` file:
```
# End of section
127.0.0.1 f93e37e51545
127.0.0.1 60d33697e89e
```