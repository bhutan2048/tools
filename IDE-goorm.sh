#!/bin/sh
# Free RDP GoormIDE
sudo adduser ubuntu --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "ubuntu:abc123!!!" | sudo chpasswd
sudo usermod -aG sudo,adm ubuntu
sudo apt update
clear
echo "===================================="
echo "Install LXDE"
sudo apt-get install lxde -y
sudo apt-get install -y xrdp
sudo service xrdp start
clear
echo "===================================="
echo "RDP IP Address :" && curl --silent --show-error ipconfig.io
echo "Username : ubuntu"
echo "Password : abc123!!!"
echo Go to settings add port 3389
echo "Done============================"
