#!/bin/bash
set -ex
mysql -h mydb -uroot -prehat123 <<EOF
CREATE DATABASE mydatadb;
CREATE USER 'mysqluser'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'mysqluser'@'%';
FLUSH PRIVILEGES;
EOF