#!/bin/bash
set -e

sudo apt update
sudo apt install -y qemu-kvm libvirt-daemon-system bridge-utils python3 python3-pip git

git clone https://github.com/foxlet/macOS-Simple-KVM.git
cd macOS-Simple-KVM

./jumpstart.sh --catalina

qemu-img create -f qcow2 macOS.qcow2 64G

echo "Setup complete. Run ./headless-launch.sh to start macOS with GUI."
