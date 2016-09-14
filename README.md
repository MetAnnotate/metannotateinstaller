README
===

This is an installer for https://bitbucket.org/doxeylab/metannotate/ 
when you don't want the command-line version and just want the web server
You need about 40G of space to store all files (including a Refseq database)

We package everything in a [docker container](https://www.docker.com/) that is similar to virtualbox to make it easy to install.

Ubuntu(>=14.04) Install
---

1. Download docker by running `wget -qO- https://get.docker.com/ | sh`
2. Download this project 
3. Go to the project folder, run `bash ./install.sh`
4. You might need to enter password of your machine

Mac Install 
---

1. Download docker at https://docs.docker.com/docker-for-mac/
2. Download this project 
3. Go to the project folder, run `bash ./install.sh`
4. You might need to enter password of your machine


Checking Status of Installation

Before you run `bash start-server.sh`

```bash
bash check-status.sh
```

Start Server
---

The following script will output the URL that you should open in browser

Please bookmark that address and always check if the server has already started. Repeated starting might cancel existing jobs. 


```bash
bash start-server.sh
```


Something went wrong?
---
You can uninstall and reinstall by 
```bash
bash uninstall.sh
bash install.sh
```





