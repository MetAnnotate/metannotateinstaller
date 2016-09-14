sudo docker ps -aq | xargs -I{} sudo docker rm -f {}
if [ $? -eq 0 ]; then 
    echo "uninstall complete"
else
    echo "uninstall failed, run again?"
fi


