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



## 📦 Quick Start

1. Install Termux from [F-Droid](https://f-droid.org/en/packages/com.termux/)
2. Paste this command in Termux:

```bash
# curl -fsSL https://raw.githubusercontent.com/your-username/phonecloud/main/install.sh | bash
```



## 🖥️ Accessing Your Server
After installation, access your mobile server from any device:

```bash
ssh root@<tailscale-ip>
```

You can also serve web apps:
```bash
http://<tailscale-ip>:8000
```



## 📂 What’s Inside

1. install.sh – Complete automated setup script
2. scripts/ – Optional custom scripts (Nginx, FastAPI, File Sharing, etc.)
3. autostart/ – Startup helpers for SSH and Tailscale



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
