#!/bin/bash

# Script to install PowerShell on ParrotOS (Debian Lory)

# Update package lists
echo "Updating package lists..."
sudo apt-get update

# Install required dependencies
echo "Installing required dependencies..."
sudo apt-get install -y wget apt-transport-https software-properties-common

# Import the Microsoft GPG key
echo "Importing Microsoft GPG key..."
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

# Register the Microsoft Debian repository
echo "Adding Microsoft Debian repository..."
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/debian/10/prod buster main" > /etc/apt/sources.list.d/microsoft.list'

# Update package lists again
echo "Updating package lists after adding Microsoft repository..."
sudo apt-get update

# Install PowerShell
echo "Installing PowerShell..."
sudo apt-get install -y powershell

# Confirm installation
echo "PowerShell installation complete. You can start it by typing 'pwsh'."

# Optional: Start PowerShell immediately
# Uncomment the next line if you want to start PowerShell automatically after installation
# pwsh
