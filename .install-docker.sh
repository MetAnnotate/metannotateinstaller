cd /root
sudo apt-get update
if [ ! `which git` ]; then
  sudo apt-get install -y git
fi
git clone --depth=1 https://bitbucket.org/doxeylab/metannotate.git
cd metannotate
echo "Installing on ====`date`====" > install.log
bash one_command_install.sh &>> install.log
# enter password as required
