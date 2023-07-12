#Mosquitto install

cd ./mosquitto
docker-compose up -d

# MQTT Sensor install

cd ./mqtt-sensor
docker build . -t sensor
docker-compose up -d

#node-red network
docker network create node-red

# Node-Red install
docker-compose up -d