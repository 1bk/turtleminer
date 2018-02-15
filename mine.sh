#!/bin/bash
echo "Killing xmr-stak..."
killall xmr-stak
echo "Killing screen..."
killall screen

echo "Running xmr-stak in screen with name 'miner'..."
sleep 2
screen -dmS miner bash -c 'cd ~/xmr-stak/build/bin && ./xmr-stak'

sleep 2
ps -ef | grep miner # Show running process
