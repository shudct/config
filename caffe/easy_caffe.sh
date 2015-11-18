sudo apt-get update
sudo apt-get install git
sudo apt-get install libboost-all-dev
sudo apt-get install libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler 
sudo apt-get install libgflags-dev libgoogle-glog-dev liblmdb-dev 
sudo apt-get install python-skimage python-protobuf python-numpy python-opencv python-pip
sudo apt-get install graphviz python-pydot
sudo pip install -r requirements.txt
cd /opt/ & sudo git clone https://github.com/spyder-ide/spyder & sudo ln /opt/spyder/bootstrap.py /usr/local/bin/spyder
