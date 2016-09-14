if [ ! `which docker` ]; then 
    >&2 echo "Docker is not installed, aborting."
    exit 1
fi

sudo docker run -i ubuntu:14.04 bash < .install-docker.sh


