#!/usr/bin/env bash

#mysql_password="test"
apt-get update

apt-get install curl screen -y

#Nodejs

curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
apt-get install nodejs mongodb -y 

#Apache
apt-get install -y apache2

apt-get install -y git
git clone https://github.com/N0xx90/Linux-install-script.git
cd Linux-install-script
bash install.sh

cp /vagrant/systemd/nodeapp.service /etc/systemd/system/
systemctl start nodeapp