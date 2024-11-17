# gameServer


## Docker Install
- Source: [https://docs.docker.com/engine/install/ubuntu/](https://docs.docker.com/engine/install/ubuntu/)

- Add Docker's official GPG key
```
sudo apt-get update
```
```
sudo apt-get install ca-certificates curl
```
```
sudo install -m 0755 -d /etc/apt/keyrings
```
```
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
```
```
sudo chmod a+r /etc/apt/keyrings/docker.asc
```

- Add the repository to Apt sources
```
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSIONCODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
```
- To install the latest version of the Docker packages run:
```
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```
- Verify that the installation is successful by running the hello-world image:
```
sudo docker run hello-world
```

## Java Install
- Source: [https://minecraft.wiki/w/Tutorials/Setting_up_a_server](https://minecraft.wiki/w/Tutorials/Setting_up_a_server)

- To remove all current java installs for a fresh new install
```
sudo apt-get purge java*
```
- To install java 21 (for newer versions of MC)
```
sudo apt install openjdk-21-jdk-headless
```
- To install java 8 (for older versions of MC)
```
sudo apt install openjdk-8-jdk-headless
```

## Minecraft Downloads
- To download the " minecraft_server.1.21.3.jar" File. 
```
wget https://piston-data.mojang.com/v1/objects/45810d238246d90e811d896f87b14695b7fb6839/server.jar
```
- To download a diffrent or newer server jar.
  - Go to [https://www.minecraft.net/en-us/download/server](https://www.minecraft.net/en-us/download/server)
  - Right click on the download link. For the above version the link text was "minecraft_server.1.21.3.jar"
  - click "copy link address"
  - Your command will be
```
wget <Link address you copyed>
```


## Minecraft Setup
- Source `[https://gist.github.com/jakobii/84fd24210a991491d59d9eb4d549f5fa](https://gist.github.com/jakobii/84fd24210a991491d59d9eb4d549f5fa)`
- Place the downloaded jar into an empty directory of your choice
- To run the jar file dowloaded from the wget i provided
```
java -Xmx1024M -Xms1024M -jar server.jar nogui
```
- To run another jar change the file name to the name of the desired jar file
```
java -Xmx1024M -Xms1024M -jar <Name Of File Dowloaded>.jar nogui
```

- To sign the EULA
```
nano eula.txt
```
- Once the EULA is signed run the jar again and op yourself
```
op <UserName>
```

## Docker Setup
- Source `[https://gist.github.com/jakobii/84fd24210a991491d59d9eb4d549f5fa](https://gist.github.com/jakobii/84fd24210a991491d59d9eb4d549f5fa)`

- To create a Docker file
```
nano Dockerfile
```
- Paste this into the docker file if you are using the commands provided above 

```
FROM openjdk:21-jdk
WORKDIR /app/
ADD . /app/
EXPOSE 25565:25565
CMD java -Xmx1024M -Xms1024M -jar server.jar nogui
```
- Paste this and fill in the sections with a <> for diffrent java versuons and or jar files. 

```
FROM <java:8 or openjdk:21-jdk (this depends on the java version installed to run your server)>
WORKDIR /app/
ADD . /app/
EXPOSE 25565:25565
CMD java -Xmx1024M -Xms1024M -jar <Name Of File Dowloaded>.jar nogui
```

- Futher reading on the from docker command can be found at [https://docs.docker.com/reference/dockerfile/#from](https://docs.docker.com/reference/dockerfile/#from)

- To build your docker image
```
sudo docker build . --tag minecraft
```
- Create a docker volume
```
sudo docker volume create minecraftvol
```
- Run the docker image with java terminal
```
sudo docker run -p 25565:25565 --mount source=mincraftvol,target=/app minecraft
```
- Run the docker image without java terminal
```
sudo docker run -d -p 25565:25565 --restart unless-stopped --mount source=mincraftvol,target=/app minecraft
```

## Docker Commands 

- To see the currently running docker images
```
sudo docker container list
```
- To see the currently running docker images
```
sudo docker container stop <ContainerID>
```

