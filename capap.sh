#!/bin/bash

# Define text colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

# Function to clear the terminal
clear_terminal() {
    clear
}

# Function to display a big welcome message
big_welcome() {
    echo -e "${RED} __    __    ___  _        __   ___   ___ ___    ___      __ __   ____    __  __  _    ___  ____  ${NC}"
    echo -e "${RED}|  |__|  |  /  _]| |      /  ] /   \ |   |   |  /  _]    |  |  | /    |  /  ]|  |/ ]  /  _]|    \ ${NC}"
    echo -e "${RED}|  |  |  | /  [_ | |     /  / |     || _   _ | /  [_     |  |  ||  o  | /  / |  ' /  /  [_ |  D  )${NC}"
    echo -e "${RED}|  |  |  ||    _]| |___ /  /  |  O  ||  \_/  ||    _]    |  _  ||     |/  /  |    \ |    _]|    / ${NC}"
    echo -e "${RED}|  \`  '  ||   [_ |     /   \_ |     ||   |   ||   [_     |  |  ||  _  /   \_ |     ||   [_ |    \ ${NC}"
    echo -e "${RED} \      / |     ||     \     ||     ||   |   ||     |    |  |  ||  |  \     ||  .  ||     ||  .  \${NC}"
    echo -e "${RED}  \_/\_/  |_____||_____|\____| \___/ |___|___||_____|    |__|__||__|__|\____||__|\_||_____||__|\_${NC}"
}

# Function to open author's GitHub page
open_page() {
    url="https://github.com/Adrilaw"
    open "$url"
}

# Function to get dependencies list
get_dependencies_list() {
    local dependencies=()

    # Extract dependencies mentioned in the script
    while IFS= read -r line; do
        # Check for commands and extract dependencies
        if [[ "$line" == *"xterm"* ]]; then
            dependencies+=("xterm")
        fi
        if [[ "$line" == *"php"* ]]; then
            dependencies+=("php")
        fi
        if [[ "$line" == *"ssh"* ]]; then
            dependencies+=("ssh")
        fi
    done < "$0" # Read from the current script file

    # Remove duplicates
    dependencies=($(echo "${dependencies[@]}" | tr ' ' '\n' | sort -u | tr '\n' ' '))

    # Print the list of dependencies
    echo "${dependencies[@]}"
}

# Function to print a colored line
print_colored_line() {
    echo -e "\e[1;34m-------------------------------------------------------------------\e[0m"
}

# Function to start the captive portal phishing
phish_captive_portal() {
    clear_terminal
    echo "Starting Captive Portal phishing..."

    # List available network interfaces
    echo -e "\n${YELLOW}Available Network Interfaces:${NC}"
    ifconfig | grep -oP '(?<=^[a-zA-Z0-9]+:).*(?=ether)' | awk '{$1=$1;print}'
    echo ""

    # Prompt user to choose a network interface
    read -p "Enter the name of the network interface to use: " interface_name

    # Start monitor mode on the chosen interface
    echo "Starting monitor mode on interface: $interface_name"
    airmon-ng start "$interface_name"

    # Run the captive portal phishing process using the chosen interface
    # For simplicity, let's assume running a custom script for the phishing process
    # You can replace this with your actual phishing logic
    ./custom_phishing_script.sh "$interface_name"

    # Once the victim connects to the fake WiFi, the phishing page will be served,
    # and the script will capture the credentials.
    # Ensure the phishing page (e.g., login.php) is in the selected site directory.
}

# Main script starts here

# Clear the terminal
clear_terminal

# Display the big welcome message
big_welcome

# Pause for 3 seconds
sleep 3

# Function to phish an online platform
phish_online_platform() {
    clear_terminal
    echo "Phishing an online platform..."
    echo -e "\n${YELLOW}Available Online Platforms:${NC}"
    echo "1. Facebook"
    echo "2. Google"
    echo "3. Twitter"
    echo "4. Custom Platform"

    read -p "Choose an option: " platform_choice

    case $platform_choice in
        1) phish_facebook ;;
        2) phish_google ;;
        3) phish_twitter ;;
        4) phish_custom_platform ;;
        *) echo "Invalid option. Please choose again." ;;
    esac
}

# Call the function to get the dependencies list
dependencies_list=$(get_dependencies_list)

# Print the dependencies list with a colored line above
print_colored_line
echo -e "\e[1;33mDependencies list:\e[0m"
echo "$dependencies_list"
print_colored_line

# Phish an online platform or start captive portal phishing
read -p "Do you want to phish an online platform (o) or start captive portal phishing (c)? [o/c]: " choice
case $choice in
    o|O) phish_online_platform ;;
    c|C) phish_captive_portal ;;
    *) echo "Invalid choice. Exiting." ;;
esac
