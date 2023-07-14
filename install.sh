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

#MongoDB install
cd $pfad/mongodb
mkdir -p ./data/
docker-compose up -d