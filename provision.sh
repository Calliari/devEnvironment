#!/bin/bash

# Update the souces list
sudo apt-get update -y

# Upgrade any packages available
sudo apt-get upgrade -y

# Install the package for nginx
sudo apt-get install nginx -y

# install node.js  version 7
sudo npm cache clean -f
sudo apt-get install -y nodejs

# install node.js  version 6
# curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
# sudo apt-get install -y nodejs


# install the pm2 from npm
sudo npm install -g pm2

#  Install the git 
sudo apt-get install git -y


###############################

# going to this directory
cd ~/app

#Download the curl and nginx
sudo apt-get install curl
sudo apt-get install nginx



# change directory 

sudo rm -r /etc/nginx/sites-available/default 

cd ~/

# mv ~/devEnvironment/nginx.default.sh ~/devEnvironment default

# sudo mv ~/devEnvironment/default /etc/nginx/sites-available/



# restart the server
sudo service nginx restart

echo 'script runned'


