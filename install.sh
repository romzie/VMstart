#!/bin/sh
#VIM
sudo apt install -y vim

#KEYBOARD
#setxkbmap fr

#EMACS
sudo apt install -y emacs

#GIT
sudo apt install -y git

#ATOM
sudo add-apt-repository -y ppa:webupd8team/atom
sudo apt update
sudo apt install -y atom

#TENSORFLOW
sudo apt install -y python-pip python-dev
sudo pip install tensorflow

#OPENCV
#Build tools
sudo apt install -y build-essential cmake
#GUI
sudo apt install -y qt5-default
#Media I/O
sudo apt install -y zlib1g-dev libjpeg-dev libwebp-dev libpng-dev libtiff5-dev libjasper-dev libopenexr-dev libgdal-dev
#Video I/O
sudo apt install -y libdc1394-22-dev libavcodec-dev libavformat-dev libswscale-dev libtheora-dev libvorbis-dev libxvidcore-dev libx264-dev yasm libopencore-amrnb-dev libopencore-amrwb-dev libv4l-dev libxine2-dev
#Parallelism
sudo apt install -y libtbb-dev libeigen3-dev
#Install library
wget https://github.com/opencv/opencv/archive/3.1.0.zip
unzip 3.1.0.zip
rm 3.1.0.zip
mv opencv-3.1.0 OpenCV
cd OpenCV
mkdir build
cd build
cmake -DWITH_QT=ON -DWITH_OPENGL=ON -DFORCE_VTK=ON -DWITH_TBB=ON -DWITH_GDAL=ON -DWITH_XINE=ON -DBUILD_EXAMPLES=ON ..
make -j4
sudo make install
sudo ldconfig
