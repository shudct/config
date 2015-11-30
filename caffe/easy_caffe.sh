OPENBLAS=1
SPYDER=1
NTHREAD=32
sudo apt-get update
sudo apt-get install git
sudo apt-get install libboost-all-dev
sudo apt-get install libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler 
sudo apt-get install libgflags-dev libgoogle-glog-dev liblmdb-dev 
sudo apt-get install python-skimage python-protobuf python-numpy python-opencv python-pip
sudo apt-get install graphviz python-pydot
sudo pip install -r requirements.txt

#openblas
if [ $OPENBLAS ]
then
	cd /opt/ 
	if [ ! -d "./OpenBLAS" ];then
		sudo git clone https://github.com/xianyi/OpenBLAS 
	fi
	cd OpenBLAS & sudo make -j$NTHREAD & sudo make install
	sudo cp include/* /usr/local/include/
	sudo cp lib/* /usr/local/lib/
fi 
if [ $SPYDER ];then
	cd /opt/ 
	if [ ! -d "./spyder"];then
		sudo git clone https://github.com/spyder-ide/spyder 
	fi
	cd spyder 
	sudo ln /opt/spyder/bootstrap.py /usr/local/bin/spyder
	sudo cp ../Spyder.desktop /usr/share/applications/
fi

cd ~/ & git clone git@github.com:zeakey/DeepSkeleton
cd DeepSkeleton & make -j$NTHREAD