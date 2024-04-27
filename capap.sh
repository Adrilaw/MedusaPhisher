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

# Function to display available network adapters
display_network_adapters() {
    echo -e "${YELLOW}Available Network Adapters:${NC}"
    iw dev | awk '$1=="Interface"{print $2}'
}

# Function to put a network adapter in monitor mode
put_adapter_in_monitor_mode() {
    adapter=$1
    echo -e "${YELLOW}Putting $adapter in monitor mode...${NC}"
    airmon-ng start $adapter
}

# Function to stop monitor mode and restore network adapter
stop_monitor_mode() {
    adapter=$1
    echo -e "${YELLOW}Stopping monitor mode for $adapter...${NC}"
    airmon-ng stop $adapter
}

# Function to display fake AP templates from the sites directory
display_fake_ap_templates() {
    echo -e "${YELLOW}Available Fake AP Templates:${NC}"
    ls sites/fake_ap
}

# Function to choose a fake AP template
choose_fake_ap_template() {
    display_fake_ap_templates
    read -p "Choose a template: " template
}

# Function to create a fake access point with the chosen template and AP name
create_fake_access_point() {
    ap_name=$1
    template=$2
    echo -e "${YELLOW}Creating fake access point '$ap_name' with template '$template'...${NC}"
    # Add commands to create the fake access point using the chosen template and AP name
    # For demonstration, we'll echo the commands instead of executing them
    echo "sudo airbase-ng -e \"$ap_name\" -c 11 wlan0mon -F sites/fake_ap/$template"
}

# Main menu function
menu() {
    clear_terminal

    echo "1. Create Fake Access Point"
    echo "2. Exit"

    read -p "Choose an option: " option

    case $option in
        1)
            display_network_adapters
            read -p "Choose a network adapter to put in monitor mode: " adapter
            put_adapter_in_monitor_mode $adapter
            read -p "Enter the desired AP name: " ap_name
            choose_fake_ap_template
            create_fake_access_point "$ap_name" "$template"
            ;;
        2)
            echo "Exiting..."
            stop_monitor_mode $adapter  # Ensure monitor mode is stopped before exiting
            exit 0
            ;;
        *)
            echo "Invalid option. Please choose again."
            menu
            ;;
    esac
}

# Main script starts here
menu
