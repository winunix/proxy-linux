# Proxy for Linux

> Easy proxy service switching for browsers and others

Essa ferramenta facilita o chaveamento rápido das configurações de proxy no ambiente linux. Modifica as configurações de proxy dos seguintes apps:

- Firefox
- Google Chrome
- Chromium
- Apt (file apt.conf)
- Wget (file .wgetrc)
- File .profile

![Example](./example.gif)

## How to Install

### With Debian Package

#### Install

You need to download the deb package. [Click here](https://github.com/ailtonbsj/proxy-linux/releases/download/1.1.3/proxy-linux_1.1.3_all.deb)

You can execute using graphical program or execute the command below:

```
sudo apt install ./proxy-linux*.deb
```

#### Uninstall

```
sudo apt remove --purge proxy-linux
```

### With NPM

#### Install

```
sudo npm i -g --unsafe proxy-linux
```

#### Uninstall

```
sudo npm uninstall -g --unsafe proxy-linux
```

### Manual installation

You need to download or clone the repository on github and execute:

#### Install

```
sudo ./install.sh
```

#### Uninstall
```
sudo ./install.sh -u
```
