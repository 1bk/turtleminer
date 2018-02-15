# Install dependencies
sudo apt -y install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev

# Clone & build XMR-STAK
cd ~ # Reset directory to user HOME
git clone https://github.com/fireice-uk/xmr-stak.git
mkdir xmr-stak/build
cd xmr-stak/build
cmake -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF ..
make install

cd bin
cp ~/turtleminer/config.txt . # Use config file from this repo

echo "To start mining, run `. mine.sh` in `turtleminer` directory"
