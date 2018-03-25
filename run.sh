

#--------------------------------------------------
#DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
#source $DIR/../../env.sh
#if [ $? -ne 0 ]; then
#  echo "Erorr, can't open envfile: $1"
#  exit 1
#fi
#--------------------------------------------------
MYSQL_CONTAINER_NAME="maridb"
MYSQL_ROOT_PASSWORD="password"
MYSQL_DOCKER_IMG="mariadb:10.2-2018-03-25"
DATA_PATH="/Users/siangye/Documents/mariadb_data_folder/"
#--------------------------------------------------
docker run -d \
  --restart="always" \
  --name ${MYSQL_CONTAINER_NAME} \
  -e MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD} \
  -v $DATA_PATH:/var/lib/mysql \
  -p 3306:3306 \
  $MYSQL_DOCKER_IMG
