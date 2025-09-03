# Linux Screen Guide



## Screen Install
- Source: [https://linuxize.com/post/how-to-use-linux-screen/](https://linuxize.com/post/how-to-use-linux-screen/)

```
sudo apt-get update
```
```
sudo apt install screen
```


## Screen Commands

- Create an unnamed screen
```
screen 
```
- Create a named screen
```
screen -S <Screen name>
```

<br>
</br>

- Exit current screen
```
ctrl + a     then     ctrl + d
```
<br>
</br>

- List current screens with their IDs
```
screen -ls
```
<br>
</br>

- Reattach to the last screen
```
screen -r
```

- Reattach to a specific screen
```
screen -r <Screen name or ID>
```
<br>
</br>

- Close screen
```
screen -XS <Screen name or ID> quit
```
