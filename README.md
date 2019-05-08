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

## With NPM

### Install

```
sudo npm i -g --unsafe proxy-linux
```

### Uninstall

```
sudo npm uninstall -g --unsafe proxy-linux
```

## Without NPM

You need to download or clone the repository on github and execute:

### Install

```
sudo ./install.sh
```

### Uninstall
```
sudo ./install.sh -u
```
