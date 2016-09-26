if [ ! `which docker` ]; then 
    >&2 echo "Docker is not installed, aborting."
    exit 1
fi

HOST_PORT_NUM=12345
CONTAINER_PORT_NUM=8080
sudo docker run -p 127.0.0.1:$HOST_PORT_NUM:$CONTAINER_PORT_NUM -i ubuntu:14.04 bash < .install-docker.sh


