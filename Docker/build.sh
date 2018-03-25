DATE=$(date +%F)
docker build -t="mariadb:10.2-$DATE" .
