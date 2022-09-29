#!/bin/bash
# -*- ENCODING: UTF-8 -*-
echo "######################"
echo "Mise à jour du systeme et installation aptitude"
echo "######################"
sudo apt update && sudo apt install -y aptitude && sudo aptitude -y upgrade
echo "Voulez-vous installer wine [o/n] ?"
read rep
if [ "$rep" == "o" -o "$rep" == "y" ]
then
echo "Installation de wine"
sudo aptitude -y install wine
else
echo "Wine ne sera pas installer"
echo "######################"
fi
echo "Voulez-vous installer snapd et snap [o/n] ?"
read rep
if [ "$rep" == "o" -o "$rep" == "y" ]
then
echo "Installationde snap"
sudo aptitude -y install snapd snap
else
echo "Snap ne sera pas installer"
echo "######################"
fi
echo "Voulez-vous installer Discord,Spotify,Sosumi"
read rep
if [ "$rep" == "o" -o "$rep" == "y" ]
then
echo "Installation de Spotify, discord et sosumi"
sudo snap install spotify discord sosumi
else
echo "Spotify, discord et sosumi ne seront pas installer"
fi
