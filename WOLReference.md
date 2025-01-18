# Wake on Lan Reference
- This is a reference for me to use when setting up wake on lan in the future.
- Source:  [Ubuntu WOL article](https://help.ubuntu.com/community/WakeOnLan)


## Setup
- **List all the network devices and their names eg "enp1s0"**
```
ip link show
```

- **Lists the Properties of the network device**
```
sudo ethtool <network device name>
```

- **Sets the network device to accept WOL packets**
```
sudo ethtool -s <network device name> wol g
```

- **Troubleshooting**
  - Make sure WOL is enabled in PCIE settings in BIOS
  - Make sure sleep states are disabled in BIOS


