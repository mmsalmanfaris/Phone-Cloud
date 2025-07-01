#!/data/data/com.termux/files/usr/bin/bash

# ==============================
# 📦 PhoneCloud Installer Script
# ==============================
# Turns Android + Termux into a portable Ubuntu server with SSH & Tailscale

# Update Termux packages
echo "📦 Updating Termux packages..."
pkg update && pkg upgrade -y

# Install core tools
echo "🔧 Installing proot-distro and curl..."
pkg install proot-distro curl wget git -y

# Install Ubuntu (Proot)
echo "📦 Installing Ubuntu in Termux..."
proot-distro install ubuntu

# Enter Ubuntu and configure environment
echo "🚀 Configuring Ubuntu environment..."
proot-distro login ubuntu <<EOF

apt update && apt upgrade -y
apt install openssh-server nginx curl git sudo unzip net-tools python3-pip -y

# Set password for SSH
passwd#!/data/data/com.termux/files/usr/bin/bash

# ==============================
# 📦 PhoneCloud Installer Script
# ==============================
# Turns Android + Termux into a portable Ubuntu server with SSH & Tailscale

# Update Termux packages
echo "📦 Updating Termux packages..."
pkg update && pkg upgrade -y

# Install core tools
echo "🔧 Installing proot-distro and curl..."
pkg install proot-distro curl wget git -y

# Install Ubuntu (Proot)
echo "📦 Installing Ubuntu in Termux..."
proot-distro install ubuntu

# Create autostart .bashrc snippet
mkdir -p ~/PhoneCloud/autostart
cat > ~/PhoneCloud/autostart/.bashrc <<EOF
# PhoneCloud Auto-Start
mkdir -p /run/sshd
/usr/sbin/sshd
mkdir -p /var/lib/tailscale
nohup tailscaled --tun=userspace-networking --state=/var/lib/tailscale/tailscaled.state &>/dev/null &
tailscale up --ssh
EOF

# Add autostart .bashrc to Ubuntu rootfs
echo "🔁 Configuring Ubuntu autostart..."
cp ~/PhoneCloud/autostart/.bashrc ~/../usr/var/lib/proot-distro/installed-rootfs/ubuntu/root/.bashrc

# Enter Ubuntu and configure environment
echo "🚀 Configuring Ubuntu environment..."
proot-distro login ubuntu <<EOF
apt update && apt upgrade -y
apt install openssh-server curl git sudo unzip net-tools python3-pip -y
passwd
EOF

# Setup complete
echo "✅ PhoneCloud setup complete!"
echo "➡️  Run: proot-distro login ubuntu"
echo "➡️  Then SSH from your PC using: ssh root@<Tailscale-IP>"


# Enable SSH and prepare run dir
mkdir -p /run/sshd
/usr/sbin/sshd

# Install Tailscale
curl -fsSL https://tailscale.com/install.sh | sh
mkdir -p /var/lib/tailscale
tailscaled --tun=userspace-networking --state=/var/lib/tailscale/tailscaled.state &
tailscale up --ssh

EOF

# Setup complete
echo "✅ Setup complete! Run: proot-distro login ubuntu"
echo "Then SSH from your PC terminal: ssh root@<Tailscale-IP>"
