#!/usr/bin/env bash

apt-get update

# Install tools
apt-get install -y python-software-properties python g++ make nginx git vim

# Install node.js from its own repo
add-apt-repository -y ppa:chris-lea/node.js
apt-get update
apt-get install -y nodejs


# Set up nginx
cp /vagrant_data/nginx.conf /etc/nginx/sites-available/nodeserv
ln -s /etc/nginx/sites-available/nodeserv /etc/nginx/sites-enabled/nodeserv
rm /etc/nginx/sites-enabled/default

/etc/init.d/nginx restart

# Set up node.js project
cd /vagrant_data

npm install -g express passport passport-twitchtv
