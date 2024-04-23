#!/bin/bash

# Function to install dependencies for Debian-based systems
install_debian_dependencies() {
    sudo apt update
    sudo apt install -y xterm php openssh-client
}

# Function to install dependencies for Arch-based systems
install_arch_dependencies() {
    sudo pacman -Syu --noconfirm
    sudo pacman -S --noconfirm xterm php openssh
}

# Function to determine the user's operating system
get_os() {
    if [ -e "/etc/os-release" ]; then
        source /etc/os-release
        if [ "$ID" = "debian" ] || [ "$ID_LIKE" = "debian" ]; then
            echo "debian"
        elif [ "$ID" = "arch" ]; then
            echo "arch"
        else
            echo "unsupported"
        fi
    else
        echo "unsupported"
    fi
}

# Main script starts here

# Check the OS and install dependencies accordingly
os=$(get_os)
if [ "$os" = "debian" ]; then
    install_debian_dependencies
elif [ "$os" = "arch" ]; then
    install_arch_dependencies
else
    echo "Unsupported operating system. Please install the dependencies manually."
fi
