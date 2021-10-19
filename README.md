# Initialize Cassandra database during docker container startup
Source code for article published @ https://2much2learn.com/setting-up-cassandra-with-docker/

```
λ git clone https://github.com/2much2learn/article-oct192021-cassandra-with-docker.git

λ cd article-oct192021-cassandra-with-docker
```

```
λ docker-compose up -d
```

```
λ docker exec -it article-oct192021-cassandra-with-docker-cassandra-1 bash
```

```bash:title=Connect%20to%20cqlsh%20and%20verify%20initialized%20database%20objects
I have no name!@d2fc96819e4b:/$ /opt/bitnami/cassandra/bin/cqlsh -u cassandra -p cassandra

cassandra@cqlsh> DESCRIBE keyspaces;

cycling  system_auth         system_schema  system_views
system   system_distributed  system_traces  system_virtual_schema

cassandra@cqlsh> use cycling;

cassandra@cqlsh:cycling>
cassandra@cqlsh:cycling> DESCRIBE tables;

cyclist_name  cyclist_races  race_times  rank_by_year_and_name

cassandra@cqlsh:cycling> DESCRIBE types;

race
```