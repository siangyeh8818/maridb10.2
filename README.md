# maridb docker
  version : 10.2 

### How to build
```
  docker build -t="mariadb:10.2-2018-03-25" .
```

### How to run
```
  vi run.sh
  setting MYSQL_ROOT_PASSWORD,MYSQL_DOCKER_IMG
  ./run.sh
```

### Init data
```
  vi run.sh
  setting DATA_PATH
  putting your .sql file to path
  ./run.sh
```
