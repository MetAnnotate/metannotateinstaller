sudo docker exec `sudo docker ps -ql` ps -ef | grep -v "grep" | grep "one_command_install"
found=$?
if [ $found -eq 0 ];then
    echo "Installation still running"
else
    echo "Installation completes, you can now start server"
fi

