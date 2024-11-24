# Linux Mint install guide
This guide shows the steps for installing Linux Mint on my laptop. This is primarily for my own future reference and I reccomend using the [official guide](https://linuxmint-installation-guide.readthedocs.io/en/latest/).

## Download the ISO image 
- Source:  [Offical Mint Page](https://linuxmint.com/edition.php?id=316)
- I simply selected the mirror closest to me.
- Chrome did attempt to block the insecure download. This can be bypassed in Chrome by changing your "Safe Browsing" settings to "no Protection". This setting can be found though "settings > Privacy and security > security"

## ISO verification on Windows
- Source:  [Offical Mint Page](https://linuxmint-installation-guide.readthedocs.io/en/latest/verify.html) [Mint Forum](https://forums.linuxmint.com/viewtopic.php?t=424583) 

- Change Directories to where the iso image was downloaded
```
cd Downloads
```
```
cd <Directory Name>
```

- Generate a SHA256 hash of the iso image
```
-hashfile linuxmint-22-cinnamon-64bit.iso SHA256
```
```
-hashfile <File Name>.iso SHA256
```

- The hash generated from my iso was.
```
7a04b54830004e945c1eda6ed6ec8c57ff4b249de4b331bd021a849694f29b8f
```
- The hash In the official `sha256sum.txt` file for my iso is
```
7a04b54830004e945c1eda6ed6ec8c57ff4b249de4b331bd021a849694f29b8f
```
- These match so my iso file has been successfully downloaded.


## Creating a bootable Media
- Source:  [Offical Mint Page]([https://linuxmint.com/edition.php?id=316](https://linuxmint-installation-guide.readthedocs.io/en/latest/burn.html)

- Download Etcher 
```
https://etcher.balena.io/#download-etcher
```

