sudo apt-get update
sudo apt-get install g++
sudo apt-get install lzip
sudo apt-get install m4

wget https://gmplib.org/download/gmp/gmp-6.1.2.tar.lz -O gmp
tar --lzip -xvf gmp
cd gmp-6.1.2
./configure
make
sudo make install

cd ..
# wget http://www.shoup.net/ntl/ntl-10.3.0.tar.gz -O ntl
wget http://www.shoup.net/ntl/ntl-10.5.0.tar.gz -O ntl
tar -xvf ntl
#cd ntl-10.3.0/src/
cd ntl-10.5.0/src/
./configure NTL_GMP_LIP=on
make
sudo make install

cd ..
cd ..
wget https://github.com/shaih/HElib/archive/master.zip -O HElib.zip
unzip HElib.zip
cd HElib-master/src/
make

