#!/bin/bash
# Hecho por WhBeatZ
atualizar='\033[1;33m' 
echo -e "$atualizar Atualizando repositorio..."
sleep 2
clear
apt update && upgrade -y
apt install -y wget
clear


#Colores :D

cyan='\033[1;36m'
yellow='\033[1;33m'
white='\033[1;37m'
verde='\033[1;32m'
lila='\033[1;35m'
rojo='\033[1;31m'

echo
echo -e "${yellow} - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo -e "${cyan}    _   _                 _   __        ___      ";
echo -e "${white}   | \ | | __ _ _ __ ___ | | _\ \      / / |__  ";
echo -e "${lila}   |  \| |/ _  |  __/ _ \| |/ /\ \ /\ / /|  _ \ ";
echo -e "${white}   | |\  | (_| | | | (_) |   <  \ V  V / | | | |";
echo -e "${cyan}   |_| \_|\__, |_|  \___/|_|\_\  \_/\_/  |_| |_|";
echo -e "${lila}          |___/                                ";
echo -e "${yellow} - - - - - - - - - - - - - - - - - - - - - - - - - -" 
echo
echo -e "${cyan}";
echo -e "Do you want to install Ngrok :D? ${lila}[${white}y${cyan}/${white}n${lila}]";
echo
echo -e -n "${yellow}---> ${white}"
read opcao
case $opcao in
y)
echo
echo -e "Downloading NgrokWh..."
case `dpkg --print-architecture` in
aarch64)
    architectureURL="arm64" ;;
arm)
    architectureURL="arm" ;;
armhf)
    architectureURL="armhf" ;;
amd64)
    architectureURL="amd64" ;;
i*86)
    architectureURL="i386" ;;
x86_64)
    architectureURL="amd64" ;;
*)
    echo "Unknown system architecture :c"
esac

wget "https://github.com/WhBeatZ/NgrokWh/blob/main/files/ngrok-stable-linux-${architectureURL}.zip?raw=true" -O ngrok.zip

unzip ngrok.zip
cat ngrok > /data/data/com.termux/files/usr/bin/ngrok
chmod 700 /data/data/com.termux/files/usr/bin/ngrok
rm ngrok ngrok.zip
clear
echo
echo -e "${yellow} - - - - - - - - - - - - - - - - - - - - - - - -"
echo
echo -e "${cyan}    _   _                 _   __        ___      ";
echo -e "${white}   | \ | | __ _ _ __ ___ | | _\ \      / / |__  ";
echo -e "${lila}   |  \| |/ _  |  __/ _ \| |/ /\ \ /\ / /|  _ \ ";
echo -e "${white}   | |\  | (_| | | | (_) |   <  \ V  V / | | | |";
echo -e "${cyan}   |_| \_|\__, |_|  \___/|_|\_\  \_/\_/  |_| |_|";
echo -e "${lila}          |___/                                ";
echo -e "${rojo}    v1.0                                         "
echo -e "${yellow} - - - - - - - - - - - - - - - - - - - - - - - -"
echo
echo -e "${yellow}Usage example${white}: ${cyan}[${white}ngrok http 8080${cyan}]${lila} \ ${yellow}or type ${cyan}[${white}ngrok${cyan}] ${ywllow}for help)"
echo
;;

n)
clear
echo 
echo
echo -e "${white}NgrokWh ${cyan}not installed ${yellow}:c"
echo
esac
