#!/bin/bash
# Script Name: setup.sh
# Description: Automates the setup of Apache web server and deployment of a portfolio site

echo "Updating server..."
sudo apt update && sudo apt upgrade -y

echo "Installing Apache..."
sudo apt install apache2 -y

echo "Enabling firewall rules..."
sudo ufw allow OpenSSH
sudo ufw allow 'Apache Full'
sudo ufw --force enable

echo "Cloning portfolio from GitHub..."
sudo git clone https://github.com/YOERI-byte/Hosting-personal-portfolio

echo "Setup complete."
