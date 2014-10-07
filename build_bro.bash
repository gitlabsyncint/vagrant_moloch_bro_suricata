#!/bin/bash

sudo apt-get -y -qq install cmake make gcc g++ flex bison libpcap-dev libgeoip-dev libssl-dev python-dev zlib1g-dev libmagic-dev swig2.0
sudo apt-get -y -qq install geoip-database-contrib
sudo apt-get -y -qq install libcurl4-openssl-dev

cd /tmp

wget -q https://www.bro.org/downloads/release/bro-2.3.1.tar.gz
tar -xzf bro-2.3.1.tar.gz 
cd bro-2.3.1
./configure 
make
sudo make install
cd ..
rm -rf bro-2.3.1 

sudo /usr/local/bro/bin/broctl install
sleep 1