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
	mkdir /etc/skel/Desktop -p
	cp -rf deb_package/usr/ /
	cp -rf deb_package/etc/ /
	cp deb_package/etc/skel/Desktop/proxy-linux-sc.desktop \
	/home/*/Desktop
	cp deb_package/etc/skel/Desktop/proxy-linux-sc.desktop \
	/home/*/Área\ de\ Trabalho
	echo "Pronto!"
fi