containerId=`sudo docker ps -lq`

numContainer=$(sudo docker ps -aq | wc -l)

if [ $numContainer -gt 1 ]; then
    echo "WARNING: the number of containers is greater than 1, it can be confusing which one to use"
    echo "Continuing by using the latest one "
fi

if [ ! $containerId ]; then 
    echo "Have you installed metannotate? It cannot be found."
    exit 1
fi
echo "Starting..."
sudo docker start $containerId 2>&1 >> start-server.log

sudo docker exec -i $containerId bash < .start-server-docker.sh 2>&1 >> start-server.log 
# since mac does not support connecting via ip, we go to exposed port
# ip=`sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}' $containerId`
# addr="http://${ip}:8080/"
addr="http://127.0.0.1:12345" # see install.sh for hostport num

echo "======= IMPORTANT ======"
echo "Please open browser at ${addr} to see the server"
echo "========================"
# linux
if [ `which xdg-open ` ]; then 
    xdg-open "$addr" & 
    exit 0 
fi

# mac
if [ `which open` ]; then 
    open "$addr" 
    exit 0 
fi



