#/usr/bin/env bash

if [ "$#" -ne 2 ]; then
	echo "Require container name and port number"
	exit 1
fi

docker run -d \
	-e MESOS_MASTER=192.168.99.100:5050 \
	-e MESOS_CONTAINERIZERS=docker \
	-v /usr/local/bin/docker:/usr/bin/docker:ro \
	-p $2:5051 \
	--name=$1 \
	lakhak/mesos-slave
