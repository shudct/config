sudo dpkg -i cuda-repo-ubuntu1404-7-5-local_7.5-18_amd64.deb
sudo apt-get update
sudo apt-get install cuda
sudo cp cuda.conf /etc/ld.so.conf.d/
sudo ldconfig
