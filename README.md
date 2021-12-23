# Proxy for Linux

> Easy proxy service switching for browsers and others

This tool facilitates quick switching of proxy settings in the linux environment. Modify proxy settings for the following apps:

- Firefox
- Google Chrome
- Chromium
- Apt (file apt.conf)
- Wget (file .wgetrc)
- File .profile

![Example](./example.gif)

## Install with APT Repository

```bash
wget -qO - "https://winunix.github.io/debian/public.key" | sudo apt-key add -
echo "deb https://winunix.github.io/debian focal main" | sudo tee /etc/apt/sources.list.d/winunix-focal.list
sudo apt update
sudo apt install proxy-linux
```

## Install with Debian Package

You need to download the deb package. [Click here](https://github.com/winunix/debian/tree/master/pool/main/p/proxy-linux).

You can execute using graphical program or execute the command below:

```
sudo apt install ./proxy-linux*.deb
```

## Uninstall

```
sudo apt remove --purge proxy-linux
```
