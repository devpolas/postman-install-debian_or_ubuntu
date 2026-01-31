# Install Postman Debian/Ubuntu

## Install _curl_ or _wget_ for download postman via terminal

```sh
#update and upgrade system
sudo apt update -y && sudo apt upgrade -y

#install curl and wget
sudo apt install curl wget

#change dirctory to downloads directory
cd && cd Downloads

#download postman latest version
wget https://dl.pstmn.io/download/latest/linux_64

#clean if have any Postman directory under opt directory of postman older version
sudo rm -rf /opt/Postman

#extract postman to opt directory
sudo tar -zxf postman-linux-x64.tar.gz -C /opt
```

## Create a desktop file
```sh
sudo tee -a /usr/share/applications/postman.desktop << END
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=/opt/Postman/Postman
Icon=/opt/Postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
END
```
