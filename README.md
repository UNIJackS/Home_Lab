# gameServer


## Docker Install
- Source: [https://docs.docker.com/engine/install/ubuntu/](https://docs.docker.com/engine/install/ubuntu/)

- Add Docker's official GPG key:

`sudo apt-get update`

`sudo apt-get install ca-certificates curl`

`sudo install -m 0755 -d /etc/apt/keyrings`

`sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc`

`sudo chmod a+r /etc/apt/keyrings/docker.asc`

- Add the repository to Apt sources:

`echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSIONCODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update`

- To install the latest version of the Docker packages run:

`sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin`

- Verify that the installation is successful by running the hello-world image:

 `sudo docker run hello-world`


## Java Install
- Source: [https://minecraft.wiki/w/Tutorials/Setting_up_a_server](https://minecraft.wiki/w/Tutorials/Setting_up_a_server)

- Remove all current java installs

`sudo apt-get purge java*`

- To install java 21

`sudo apt install openjdk-21-jdk-headless`

- To install java 8

`sudo apt install openjdk-8-jdk-headless`



## Minecraft Downloads
- To download the " minecraft_server.1.21.3.jar" File. 
  
`wget https://piston-data.mojang.com/v1/objects/45810d238246d90e811d896f87b14695b7fb6839/server.jar`

- To download a diffrent or newer server jar.
  - Go to `https://www.minecraft.net/en-us/download/server`
  - Right click on the download link. For the above version the link text was "minecraft_server.1.21.3.jar"
  - click "copy link address"
  - Your command will be `wget <Link address you copyed>`



- Source `https://docs.docker.com/engine/install/ubuntu/`
