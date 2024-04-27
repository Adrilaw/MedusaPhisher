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

big_welcome() {
    echo -e "${RED} __    __    ___  _        __   ___   ___ ___    ___      __ __   ____    __  __  _    ___  ____  ${NC}"
    echo -e "${RED}|  |__|  |  /  _]| |      /  ] /   \ |   |   |  /  _]    |  |  | /    |  /  ]|  |/ ]  /  _]|    \ ${NC}"
    echo -e "${RED}|  |  |  | /  [_ | |     /  / |     || _   _ | /  [_     |  |  ||  o  | /  / |  ' /  /  [_ |  D  )${NC}"
    echo -e "${RED}|  |  |  ||    _]| |___ /  /  |  O  ||  \_/  ||    _]    |  _  ||     |/  /  |    \ |    _]|    / ${NC}"
    echo -e "${RED}|  \`  '  ||   [_ |     /   \_ |     ||   |   ||   [_     |  |  ||  _  /   \_ |     ||   [_ |    \ ${NC}"
    echo -e "${RED} \      / |     ||     \     ||     ||   |   ||     |    |  |  ||  |  \     ||  .  ||     ||  .  \${NC}"
    echo -e "${RED}  \_/\_/  |_____||_____|\____| \___/ |___|___||_____|    |__|__||__|__|\____||__|\_||_____||__|\_${NC}"
    return
}

# Clear the terminal
clear_terminal

# Display the big welcome message
big_welcome

# Pause for 3 seconds
sleep 3

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

# Call the function to get the dependencies list
dependencies_list=$(get_dependencies_list)

# Print the dependencies list with a colored line above
print_colored_line
echo -e "\e[1;33mDependencies list:\e[0m"
echo "$dependencies_list"
print_colored_line

trap 'printf "\n"; stop; exit 1' 2

menu() {
    printf "\n"
    printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;91m Instagram\e[0m      \e[1;92m[\e[0m\e[1;77m17\e[0m\e[1;92m]\e[0m\e[1;91m IGFollowers\e[0m   \e[1;92m[\e[0m\e[1;77m33\e[0m\e[1;92m]\e[0m\e[1;91m Create Phishing Page\e[0m\n"                                
    printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;91m Facebook\e[0m       \e[1;92m[\e[0m\e[1;77m18\e[0m\e[1;92m]\e[0m\e[1;91m eBay   \e[0m                 \e[1;92m[\e[0m\e[1;77m34\e[0m\e[1;92m]\e[0m\e[1;91m Select Network Interface\e[0m\n"
    printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;91m Snapchat\e[0m       \e[1;92m[\e[0m\e[1;77m19\e[0m\e[1;92m]\e[0m\e[1;91m Pinterest   \e[0m             \n"
    printf "\e[1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;91m Twitter\e[0m        \e[1;92m[\e[0m\e[1;77m20\e[0m\e[1;92m]\e[0m\e[1;91m CryptoCurrency   \e[0m         \n"
    printf "\e[1;92m[\e[0m\e[1;77m05\e[0m\e[1;92m]\e[0m\e[1;91m Whatsapp\e[0m       \e[1;92m[\e[0m\e[1;77m21\e[0m\e[1;92m]\e[0m\e[1;91m Verizon   \e[0m                \n"
    printf "\e[1;92m[\e[0m\e[1;77m06\e[0m\e[1;92m]\e[0m\e[1;91m Netflix\e[0m        \e[1;92m[\e[0m\e[1;77m22\e[0m\e[1;92m]\e[0m\e[1;91m Dropbox   \e[0m                \n"
    printf "\e[1;92m[\e[0m\e[1;77m07\e[0m\e[1;92m]\e[0m\e[1;91m Xbox\e[0m           \e[1;92m[\e[0m\e[1;77m23\e[0m\e[1;92m]\e[0m\e[1;91m AdobeID   \e[0m               \n"
    printf "\e[1;92m[\e[0m\e[1;77m08\e[0m\e[1;92m]\e[0m\e[1;91m Steam\e[0m          \e[1;92m[\e[0m\e[1;77m24\e[0m\e[1;92m]\e[0m\e[1;91m Shopify   \e[0m               \n"
    printf "\e[1;92m[\e[0m\e[1;77m09\e[0m\e[1;92m]\e[0m\e[1;91m PayPal\e[0m         \e[1;92m[\e[0m\e[1;77m25\e[0m\e[1;92m]\e[0m\e[1;91m Messenger\e[0m                 \n"
    printf "\e[1;92m[\e[0m\e[1;77m10\e[0m\e[1;92m]\e[0m\e[1;91m Gmail\e[0m          \e[1;92m[\e[0m\e[1;77m26\e[0m\e[1;92m]\e[0m\e[1;91m GitToken\e[0m                 \n"
    printf "\e[1;92m[\e[0m\e[1;77m11\e[0m\e[1;92m]\e[0m\e[1;91m Yahoo\e[0m          \e[1;92m[\e[0m\e[1;77m27\e[0m\e[1;92m]\e[0m\e[1;91m Protonmail\e[0m               \n"
    printf "\e[1;92m[\e[0m\e[1;77m12\e[0m\e[1;92m]\e[0m\e[1;91m Linkedin\e[0m       \e[1;92m[\e[0m\e[1;77m28\e[0m\e[1;92m]\e[0m\e[1;91m Shopify2\e[0m                 \n"
    printf "\e[1;92m[\e[0m\e[1;77m13\e[0m\e[1;92m]\e[0m\e[1;91m WordPress\e[0m      \e[1;92m[\e[0m\e[1;77m29\e[0m\e[1;92m]\e[0m\e[1;91m Stackoverflow\e[0m            \n"
    printf "\e[1;92m[\e[0m\e[1;77m14\e[0m\e[1;92m]\e[0m\e[1;91m iCloud\e[0m         \e[1;92m[\e[0m\e[1;77m30\e[0m\e[1;92m]\e[0m\e[1;91m Twitch\e[0m                   \n"
    printf "\e[1;92m[\e[0m\e[1;77m15\e[0m\e[1;92m]\e[0m\e[1;91m Microsoft\e[0m      \e[1;92m[\e[0m\e[1;77m31\e[0m\e[1;92m]\e[0m\e[1;91m MySpace\e[0m                 \n"
    printf "\e[1;92m[\e[0m\e[1;77m16\e[0m\e[1;92m]\e[0m\e[1;91m Apple\e[0m          \e[1;92m[\e[0m\e[1;77m32\e[0m\e[1;92m]\e[0m\e[1;91m Badoo\e[0m                   \n"
    printf "\e[1;92m[\e[0m\e[1;77m00\e[0m\e[1;92m]\e[0m\e[1;91m Exit\e[0m                                          \n"
    printf "\e[1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;91m Open GitHub Page\e[0m                                \n"
    printf "\e[1;92m[\e[0m\e[1;77m98\e[0m\e[1;92m]\e[0m\e[1;91m Get dependencies list\e[0m                            \n"
    printf "\n"
    printf "\e[1;92m[\e[0m\e[1;77m??\e[0m\e[1;92m]\e[0m\e[1;91m More pages coming soon! Stay tuned ;)\e[0m             \n"
    printf "\n"
}

# Function to start the phishing attack
start() {
    if [[ $server == "start" ]]; then
        case $option in
            01) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting Instagram Phishing Attack...\e[0m";;
            02) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting Facebook Phishing Attack...\e[0m";;
            03) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting Snapchat Phishing Attack...\e[0m";;
            04) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting Twitter Phishing Attack...\e[0m";;
            05) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting Whatsapp Phishing Attack...\e[0m";;
            06) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting Netflix Phishing Attack...\e[0m";;
            07) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting Xbox Phishing Attack...\e[0m";;
            08) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting Steam Phishing Attack...\e[0m";;
            09) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting PayPal Phishing Attack...\e[0m";;
            10) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting Gmail Phishing Attack...\e[0m";;
            11) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting Yahoo Phishing Attack...\e[0m";;
            12) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting Linkedin Phishing Attack...\e[0m";;
            13) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting Wordpress Phishing Attack...\e[0m";;
            14) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting iCloud Phishing Attack...\e[0m";;
            15) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting Microsoft Phishing Attack...\e[0m";;
            16) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting Apple Phishing Attack...\e[0m";;
            17) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting IGFollowers Phishing Attack...\e[0m";;
            18) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting eBay Phishing Attack...\e[0m";;
            19) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting Pinterest Phishing Attack...\e[0m";;
            20) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting CryptoCurrency Phishing Attack...\e[0m";;
            21) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting Verizon Phishing Attack...\e[0m";;
            22) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting Dropbox Phishing Attack...\e[0m";;
            23) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting AdobeID Phishing Attack...\e[0m";;
            24) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting Shopify Phishing Attack...\e[0m";;
            25) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting Messenger Phishing Attack...\e[0m";;
            26) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting GitToken Phishing Attack...\e[0m";;
            27) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting Protonmail Phishing Attack...\e[0m";;
            28) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting Shopify2 Phishing Attack...\e[0m";;
            29) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting Stackoverflow Phishing Attack...\e[0m";;
            30) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting Twitch Phishing Attack...\e[0m";;
            31) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting MySpace Phishing Attack...\e[0m";;
            32) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting Badoo Phishing Attack...\e[0m";;
            33) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting Create Phishing Page Phishing Attack...\e[0m";;
             34) echo -e "\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Starting Select Network Interface Phishing Attack...\e[0m";;
        esac
    fi
}

# Function to stop the phishing attack
stop() {
    if [[ $server == "stop" ]]; then
        echo -e "\n\e[1;34m[\e[0m*\e[1;34m]\e[0m\e[1;77m Stopping the Phishing Attack...\e[0m\n"
        sleep 2
    fi
}

# Function to handle user input
user_input() {
    printf "\e[1;77m┌──(root㉿root)-[~/Desktop]\e[0m\n"
    printf "\e[1;77m└─#\e[0m\e[1;92m\e[0m\e[1;77m Please enter your choice: \e[0m"
    read -r option
}

# Function to check dependencies
check_dependencies() {
    printf "\n\e[1;92m[*] Checking dependencies...\e[0m\n\n"
    for dep in "${dependencies_list[@]}"; do
        if ! command -v "$dep" &> /dev/null; then
            echo -e "${RED}[-] Error: ${dep} is not installed.${NC}" >&2
            echo -e "${YELLOW}[+] To install ${dep}, run: sudo apt install ${dep}${NC}"
            exit 1
        fi
    done
    echo -e "${GREEN}[+] All dependencies are installed.${NC}"
}

# Function to handle menu navigation
menu_navigation() {
    while true; do
        clear_terminal
        big_welcome
        print_colored_line
        menu
        print_colored_line
        user_input
        start
        stop
        if [[ $option == 99 ]]; then
            open_page
        elif [[ $option == 98 ]]; then
            echo -e "\n\e[1;92m[*] Getting dependencies list...\e[0m\n"
            echo -e "Dependencies list:\n$dependencies_list"
            read -p "Press Enter to continue..."
        elif [[ $option == 00 ]]; then
            echo -e "\n\e[1;92m[*] Exiting...\e[0m\n"
            sleep 2
            exit 0
        else
            echo -e "\n\e[1;91m[-] Invalid option. Please try again.\e[0m\n"
            sleep 2
        fi
    done
}

# Check dependencies
check_dependencies

# Start the menu navigation
menu_navigation
