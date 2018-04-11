# Install dependencies
sudo apt -y install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev

# Clone & build XMR-STAK
cd ~ # Reset directory to user HOME
rm -rf trtl-stak/ # Remove existing xmr-stak directory
git clone https://github.com/turtlecoin/trtl-stak.git
mkdir trtl-stak/xmr-stak/build
cd trtl-stak/xmr-stak/build
cmake -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF ../..
make install

# Use config file from this repo
cp ~/turtleminer/config.txt ./bin
cp ~/turtleminer/pools.txt ./bin

cd ~/turtleminer
echo "SUCCESS!"
echo "To start mining, run 'bash mine.sh' in 'turtleminer' directory. This will create a new screen."
