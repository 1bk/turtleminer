#!/bin/bash
echo "Killing existing 'trtlminer' screen..."
screen -X -S trtlminer quit

echo "Running xmr-stak in screen with name 'miner'..."
sleep 2
screen -dmS trtlminer bash -c 'cd ~/trtl-stak/xmrstak/build/bin && ./xmr-stak'

sleep 2
ps -ef | grep miner # Show running process
