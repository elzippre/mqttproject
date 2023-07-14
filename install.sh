#Install script for: Mosquitto, Node-Red, MariaDB/MongoDb, MQTT Sensor-App


pfad=$(pwd)
#Mosquitto install
cd $pfad/mosquitto
mkdir -p ./data/log
docker-compose up -d

# MQTT Sensor install
cd $pfad/mqtt-sensor
docker build . -t sensor
docker-compose up -d

#node-red network
cd $pfad/node-red
mkdir ./data
docker network create node-red
# Node-Red install
docker-compose up -d

#MongoDB install optional needs CPU feature missing on Gemini Lake CPU
#cd $pfad/mongo-db
#mkdir -p ./data/
#docker-compose up -d

#MariaDB install
cd $pfad/mariadb
export DB_NAME=test
docker-compose build
docker-compose up -d