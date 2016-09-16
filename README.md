README
===

This is an installer for https://bitbucket.org/doxeylab/metannotate/ 
when you don't want the command-line version and just want the web server
You need about 40G of space to store all files (including a Refseq database)

We package everything in a [docker container](https://www.docker.com/) that is similar to virtualbox to make it easy to install.

Ubuntu(>=14.04) Install
---

1. Download docker by running `wget -qO- https://get.docker.com/ | sh`
2. Download this project at https://bitbucket.org/doxeylab/metannotateinstaller/downloads
3. Unzip and go to the project folder by `cd ` command, run `bash ./install.sh`
4. You might need to enter password of your machine

Mac Install 
---

1. Download docker at https://docs.docker.com/docker-for-mac/
2. Download this project at https://bitbucket.org/doxeylab/metannotateinstaller/downloads
3. Unzip and go to the project folder by `cd ` command, run `bash ./install.sh`
4. You might need to enter password of your machine


Checking Status of Installation
---
The installation typically takes 2 hours, depending on network speed. 

You should do this before you run `bash start-server.sh`

```bash
bash check-status.sh
```

Don't start until the installation has finished. (the database might not be complete)

Start Server
---
Step 1: 

The following script will output the URL that you should open in browser
```bash
bash start-server.sh
```

Step 2:

Please bookmark that address and always check if the server has already started. Repeated starting cancels existing jobs. 

A Note on Job Time
----
A job may take hours or days if there are many HMM files. With the HMMSearch and FastTreeMap step being the longest. 

The USEARCH option is faster and does not construct phylogenetic tree. 

Something went wrong?
---
You can uninstall and reinstall by 
```bash
bash uninstall.sh
bash install.sh
```





