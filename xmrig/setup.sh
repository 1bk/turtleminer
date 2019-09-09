#!/bin/bash

# Install dependencies
sudo apt-get install git build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev libhwloc-dev

git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build
cd build
cmake ..
make

# Use config file from this repo
cp ~/turtleminer/xmrig/config.json .

cd ~/turtleminer
echo "SUCCESS!"
echo "To start mining, run 'bash mine.sh' in 'turtleminer' directory. This will create a new screen."
