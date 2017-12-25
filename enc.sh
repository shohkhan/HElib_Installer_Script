sudo apt-get update
sudo apt-get install g++
sudo apt-get install lzip
sudo apt-get install m4

wget https://gmplib.org/download/gmp/gmp-6.1.2.tar.lz -O gmp
tar --lzip -xvf gmp
cd gmp-6.1.2
./configure
make
make check
sudo make install

cd ..
# wget http://www.shoup.net/ntl/ntl-10.3.0.tar.gz -O ntl
wget http://www.shoup.net/ntl/ntl-10.5.0.tar.gz -O ntl
tar -xvf ntl
#cd ntl-10.3.0/src/
cd ntl-10.5.0/src/
./configure NTL_GMP_LIP=on NTL_EXCEPTIONS=on
# While making cuhe, if you get the error: /usr/bin/ld: /usr/local/lib/libntl.a(ZZ.o): relocation R_X86_64_32S against `.rodata' can not be used when making a shared object; recompile with -fPIC
# Edit the makefile and include the flag -fPIC in the CXXFLAGS variable
# Helpful: https://stackoverflow.com/questions/19364969/compilation-fails-with-relocation-r-x86-64-32-against-rodata-str1-8-can-not
make
make check
sudo make install

cd ..
cd ..
wget https://github.com/shaih/HElib/archive/master.zip -O HElib.zip
unzip HElib.zip
cd HElib-master/src/
make

cd ..
cd ..

cd chHE/cuhe
# Remember to use an existing gcc on CMake file
cmake ./
make
