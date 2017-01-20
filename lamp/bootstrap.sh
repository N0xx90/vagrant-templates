#!/usr/bin/env bash

mysql_password="test"
apt-get update

#Apache
apt-get install -y apache2

#Mysql
debconf-set-selections <<< "mysql-server mysql-server/root_password password ${mysql_password}"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password ${mysql_password}"
apt-get install -y mysql-server

#PHP5
apt-get install -y php5 php5-mysql