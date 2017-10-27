# MQTT Mosquitto Docker

Usage:
```

docker run -dti --network=host --name mosquitto  docker-mosquitto

docker run -dti --network=host --name mosquitto -e AUTH_USERNAME=wang -e AUTH_PASSWORD=1234 docker-mosquitto


docker run --restart=always //自动重启

docker stop $(docker ps -a -q)

docker rm $(docker ps -a -q)

docker images

docker rmi docker-mosquitto

docker build -t docker-mosquitto .

docker run -dti --network=host docker-mosquitto   /bin/bash

docker attach ContainerID
