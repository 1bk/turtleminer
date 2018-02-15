#!/bin/bash
killall xmr-stak
killall screen

screen -dmS miner bash -c 'cd ~/xmr-stak/build/bin && ./xmr-stak'
