# Bash Scripting Reference
- This is a reference for me to use when writing bash scripts in the future.
- Source:  [Free code camp article](https://www.freecodecamp.org/news/bash-scripting-tutorial-linux-shell-script-and-command-line-for-beginners/)


## Setup
- Put this at the top of the script to locate your bash install
```
#!/bin/bash
```

- Marks a file as executable for your user
```
chmod u+x <File Name>.sh
```


## Variables
- Creating and setting variables
```
<Variable Name>=<Variable Value>
```
- E.g.
```
name=desktop
```

- Using variables
```
$<Variable Name>
```
- E.g. will print the name variable
```
echo $name
```


## Useful commands
- **Print**
```
echo "<Text to print>"
```
- E.g.
```
echo "Hello World"
```
<br />

- **Sleep**
```
sleep <Number of Seconds>
```
- E.g. will sleep for 15 seconds
```
sleep 15
``` 
<br />

- **Send Magic packet**
```
wakeonlan <Mac Adress>
```
- E.g. will send a wake on lan packet to the mac address 00:00:00:00:00:00
```
wakeonlan 00:00:00:00:00:00
```
<br />

- **Ping**
```
ping <IP Adress> -c <Number of packets> -w <Time out time in seconds>
```
- E.g. will ping google with 4 packets with a timeout time of 5 seconds
```
ping 8.8.8.8 -c 4 -w 5
```
