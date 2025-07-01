![Gemini_Generated_Image_glli5hglli5hglli](https://github.com/user-attachments/assets/cdca94fa-40f0-43b5-8b30-8b724e2b467b)

# PhoneCloud: Turn Your Android into a Portable Ubuntu Server

A powerful shell-based script that transforms your Android device into a secure, internet-accessible Ubuntu server — just like an AWS EC2 instance — using Termux + Ubuntu + Tailscale. Perfect for students, developers, and non-technical users who want to learn Cloud Computing, DevOps, or host web apps **without paying for cloud VMs**.



## 🚀 Features

- Full Ubuntu environment (via proot)
- SSH/SFTP access from any device
- Public access via Tailscale (no port forwarding)
- Host websites, APIs, file servers
- All-in-one install script for fast setup
- No root or flashing required



## 🧰 Requirements

- Android phone (ARM64)
- Internet connection
- Termux (F-Droid version recommended)
- [Tailscale download](https://tailscale.com/download) & login 



## 📦 Quick Start

1. Install Termux from [F-Droid](https://f-droid.org/en/packages/com.termux/)
2. Paste this command in Termux:

```bash
# curl -fsSL https://raw.githubusercontent.com/mmsalmanfaris/Phone-Cloud/main/install.sh | bash
```



## 🖥️ Accessing Your Server
After installation, access your mobile server from any device:


## 🔐 How Remote Access Works
After setup:

On your phone, you run:
``` bash
proot-distro login ubuntu
```
(Ubuntu autostarts SSH and Tailscale)

On your laptop (with Tailscale):
```bash
ssh root@100.x.x.x
```
You’re now inside your phone’s Ubuntu shell — just like connecting to AWS/GCP!



## 📂 What’s Inside

1. install.sh ← Main auto-setup script.
2. README.md ← Documentation
3. scripts/ ← (Soon)
   - start_ubuntu.sh
4. autostart/ – (Soon)
   - .bashrc



## 🛠️ Example Use Cases
- Practice DevOps or Linux commands
- Deploy personal web tools
- File server on the go
- Replace AWS free-tier



## 💬 Contributing
Pull requests, improvements, and feature ideas are welcome!


## 🛡️ License
MIT License — free to use and modify.


## 📸 Screenshots
![3d427d41-86e5-454e-9d78-1d8eae44698e](https://github.com/user-attachments/assets/3032107a-d370-4c87-8225-92f1e5c1e2ca)

