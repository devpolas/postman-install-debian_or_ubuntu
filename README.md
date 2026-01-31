---

# Postman Installer for Debian / Ubuntu

A lightweight Bash script to install the **latest version of Postman** on Debian- and Ubuntu-based Linux distributions.
The script downloads Postman, installs it under `/opt`, and creates a desktop launcher automatically.

---

## ✨ Features

* Installs the **latest Postman release**
* Removes old Postman versions (if any)
* Creates an **Applications menu launcher**
* Simple, fast, and beginner-friendly

---

## 🖥 Supported Distributions

* Ubuntu
* Debian
* Linux Mint
* Pop!_OS
* Other Debian-based systems

---

## 🚀 Installation (Recommended)

### Step 1: Download the installer script

#### Using `wget`

```sh
wget https://github.com/devpolas/postman-install-debian_or_ubuntu/releases/download/postman-install-script/install-postman-debian_or_ubuntu.sh
```

#### Or using `curl`

```sh
curl -LO https://github.com/devpolas/postman-install-debian_or_ubuntu/releases/download/postman-install-script/install-postman-debian_or_ubuntu.sh
```

---

### Step 2: Make the script executable

```sh
chmod +x install-postman-debian_or_ubuntu.sh
```

---

### Step 3: Run the script

```sh
./install-postman-debian_or_ubuntu.sh
```

✅ **Postman is now installed!**
You can find it in your **Applications menu**.

---

## 🛠 Manual Installation (Optional)

If you prefer installing Postman manually:

### Install required tools

```sh
sudo apt update -y && sudo apt upgrade -y
sudo apt install -y curl wget
```

### Download Postman

```sh
cd ~/Downloads
wget https://dl.pstmn.io/download/latest/linux_64 -O postman-linux-x64.tar.gz
```

### Remove existing Postman installation (if any)

```sh
sudo rm -rf /opt/Postman
```

### Extract Postman to `/opt`

```sh
sudo tar -zxf postman-linux-x64.tar.gz -C /opt
```

---

## 🖥 Create Desktop Launcher

```sh
sudo tee /usr/share/applications/postman.desktop > /dev/null << EOF
[Desktop Entry]
Name=Postman
Exec=/opt/Postman/Postman
Icon=/opt/Postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
EOF
```

---

## ▶️ Launch Postman

* From the **Applications menu**
* Or via terminal:

```sh
/opt/Postman/Postman
```

---

## ❌ Uninstall Postman

```sh
sudo rm -rf /opt/Postman
sudo rm -f /usr/share/applications/postman.desktop
```

---

## 📄 License

This project is licensed under the **MIT License**.

---

## 🤝 Contributing

Contributions are welcome!
Feel free to open an issue or submit a pull request to improve this project.

---
