#!/bin/bash
# -u --> uninstall
# none --> install

if [ $(id -u) != "0" ]; then
	echo "need root"
	exit
fi

if [ "$1" == "-u" ]; then
	#Uninstall
	rm /usr/share/applications/proxy-linux.desktop
	rm -rf /usr/proxy-linux
	rm /home/*/Desktop/proxy-linux-sc.desktop
	rm /home/*/Área\ de\ Trabalho/proxy-linux-sc.desktop
	rm /etc/skel/Desktop/proxy-linux-sc.desktop
	echo "Pronto!"
else
	#Install
	apt-get install zenity -y
	mkdir /usr/proxy-linux -p
	cp main /usr/proxy-linux
	cp makeconf /usr/proxy-linux
	cp supermain /usr/proxy-linux
	cp proxy.png /usr/proxy-linux
	cp proxy-linux.desktop /usr/share/applications/
	cp proxy-linux-sc.desktop /home/*/Desktop
	cp proxy-linux-sc.desktop /home/*/Área\ de\ Trabalho
	#Install on Skell
	mkdir /etc/skel/Desktop -p
	cp proxy-linux-sc.desktop /etc/skel/Desktop
	echo "Pronto!"
fi