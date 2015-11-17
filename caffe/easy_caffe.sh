sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git
sudo apt-get install libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler 
sudo apt-get install libgflags-dev libgoogle-glog-dev liblmdb-dev 
sudo apt-get install python-skimage python-protobuf python-numpy python-opencv python-pip
sudo pip install -r requirements.txt

sudo cp -r *.conf  /etc/ld.so.conf.d/
sudo ldconfig

cd /opt/ & sudo git clone https://github.com/xianyi/OpenBLAS & cd OpenBLAS & sudo make -j32 & sudo make install 

cd ~/ & git clone https://github.com/BVLC/caffe & cd caffe & make -j32