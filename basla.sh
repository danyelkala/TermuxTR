#!/bin/bash
#Code:keyiflerolsun
#instagram: @keyiflerolsun

clear

#trap 'printf "\n";stop' 2

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

echo -e '
		\e[1;92m[\e[0m\e[1;77m00\e[0m\e[1;92m]\e[0m\e[1;93m Termux Yazma İzni
\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m Genel Kurulumlar(~0.65GB)	\e[1;92m[\e[0m\e[1;77m07\e[0m\e[1;92m]\e[0m\e[1;93m NGrok
\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m Metasploit(~0.62GB)	\e[1;92m[\e[0m\e[1;77m08\e[0m\e[1;92m]\e[0m\e[1;93m ShellPhish				
\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;93m Routersploit(~0.28GB)	\e[1;92m[\e[0m\e[1;77m09\e[0m\e[1;92m]\e[0m\e[1;93m SayCheese
\e[1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;93m HakkuFramework		\e[1;92m[\e[0m\e[1;77m10\e[0m\e[1;92m]\e[0m\e[1;93m TermuxStyling
\e[1;92m[\e[0m\e[1;77m05\e[0m\e[1;92m]\e[0m\e[1;93m OpenSourceInfoFacebook	\e[1;92m[\e[0m\e[1;77m11\e[0m\e[1;92m]\e[0m\e[1;93m Termux-Style
\e[1;92m[\e[0m\e[1;77m06\e[0m\e[1;92m]\e[0m\e[1;93m A-Rat			\e[1;92m[\e[0m\e[1;77m12\e[0m\e[1;92m]\e[0m\e[1;93m Termux-Ubuntu

	\e[1;92m[\e[0m\e[1;77m13\e[0m\e[1;92m]\e[0m\e[1;93m Rat Oluşturucu (Metasploit)
\e[1;31m'

read -p ' İşlem Numarası: ' islem

#menu 0
if [[ $islem == 0 || $islem == 00 ]]; then
	clear
	banner
	sleep 2
	termux-setup-storage
	echo -e '\033[31;40;1m              Kurulum Bitti!'
	sleep 5
	bash $HOME/TermuxTR/basla.sh

#menu 1
elif [[ $islem == 1 || $islem == 01 ]]; then
	clear
	banner
	sleep 2
	apt-get update -y                      #update in progress
	apt install python -y           #installation......
	apt install python2 -y
	apt install ruby -y 
	apt install git -y
	apt install screenfetch -y
	apt install cowsay -y
	apt install toilet -y
	apt install figlet -y
	apt install php -y 
	apt install perl -y
	apt install nmap -y
	pkg install openssh -y
	apt install bash -y
	apt install clang -y
	apt install jq -y
	apt install macchanger -y
	apt install nano -y
	apt install curl -y
	apt install tar -y
	apt install zip -y
	apt install fish -y
	apt install unzip -y
	apt install tor -y 
	apt install sudo -y
	apt install wget -y
	apt install tor -y
	apt install w3m -y
	apt install cmatrix -y
	apt install wcalc -y 
	apt install openssl
	apt install bmon -y
	pkg install unstable-repo -y
	pkg install root-repo -y
	pkg install python python2 -y
	pkg install python3 -y
	pkg install wget -y
	pkg install curl -y
	pkg install ruby -y
	pkg install php -y
	pkg install pip pip2
	pkg install clang -y
	pkg install vim -y
	pkg install nano -y
	apt install proot -y
	pkg install cat -y
	pkg install figlet -y
	pkg install cmatrix -y
	pkg install perl -y
	pkg install openssl -y
	pkg install nmap -y
	pkg install ngrok -y
	pkg install hydra -y
	pkg install perl -y
	pip install wordlist -y
	apt install nodejs -y
	apt update
	apt upgrade -y
	echo -e '\033[31;40;1m              Kurulum Bitti!'
	sleep 5
	bash $HOME/TermuxTR/basla.sh

#menu 2
elif [[ $islem == 2 || $islem == 02 ]]; then
	clear
	banner
	sleep 2
	cd $HOME
	pkg install unstable-repo
	pkg install metasploit
	sleep 2
	echo -e '\033[31;40;1m              Kurulum Bitti!'
	sleep 5
	bash $HOME/TermuxTR/basla.sh

#menu 3
elif [[ $islem == 3 || $islem == 03 ]]; then
	clear
	banner
	sleep 2
	apt-get update -y
	apt-get upgrade -y
	pkg install nano -y
	pkg install git -y
	pkg install perl -y
	pkg install python -y
	pkg install python2 -y
	pip install --upgrade pip 
	cd $HOME
	git clone https://github.com/threat9/routersploit
	sleep 5
	cd $HOME/routersploit/
	chmod +x *
	pkg install clang -y
	apt install libffi libffi-dev -y
	pkg install python-dev -y clang libcrypt-dev -y libffi-dev -y git openssl-dev -y && export CONFIG_SHELL=$PREFIX/bin/sh
	pkg upgrade && pkg install autoconf -y automake -y bison -y bzip2 -y clang -y cmake -y \ coreutils -y diffutils -y flex -y gawk -y git -y grep -y gzip -y libtool -y make -y patch -y perl -y \ sed -y 
	tar -y wget -y pkg-config -y silversearcher-ag -y
	pip install future
	termux-fix-shebang rsf.py
	pip install cryptography
	pip install requests
	pip install paramiko
	pip install pysnmp
	pip install pycrypto
	pip install pycryptodome
	pip install pysnmp==4.4.6
	pip install pytest==3.6.0
	pip install pytest-forked
	pip install pytest-xdist
	pip install flake8
	pip install -r requirements.txt
	pip install -r requirements-dev.txt
	echo -e '\033[31;40;1m              Kurulum Bitti!'
	sleep 5
	bash $HOME/TermuxTR/basla.sh

#menu 4
elif [[ $islem == 4 || $islem == 04 ]]; then
	clear
	banner
	sleep 2
	cd $HOME
	git clone https://github.com/4shadoww/hakkuframework.git
	sleep 5
	cd $HOME/hakkuframework/
	chmod +x *
	echo -e '\033[31;40;1m              Kurulum Bitti!'
	sleep 5
	bash $HOME/TermuxTR/basla.sh

#menu 5
elif [[ $islem == 5 || $islem == 05 ]]; then
	clear
	banner
	sleep 2
	apt update && apt upgrade -y
	apt install python2 -y
	apt install git python2 -y
	pip2 install requests
	pip2 install mechanize
	pip2 install --upgrade pip
	cd $HOME
	git clone https://github.com/ciku370/OSIF.git
	sleep 5
	cd $HOME/OSIF/
	chmod +x *
	pip2 install -r requirements.txt
	echo -e '\033[31;40;1m              Kurulum Bitti!'
	sleep 5
	bash $HOME/TermuxTR/basla.sh

#menu 6
elif [[ $islem == 6 || $islem == 06 ]]; then
	clear
	banner
	sleep 2
	cd $HOME
	git clone https://github.com/Xi4u7/A-Rat.git
	sleep 5
	cd $HOME/A-Rat/
	chmod +x *
	echo -e '\033[31;40;1m              Kurulum Bitti!'
	sleep 5
	bash $HOME/TermuxTR/basla.sh

#menu 7
elif [[ $islem == 7 || $islem == 07 ]]; then
	clear
	banner
	sleep 2
	cd $HOME
	git clone https://github.com/tchelospy/termux-ngrok.git
	sleep 5
	cd $HOME/termux-ngrok/
	chmod +x *
	./termux-ngrok.sh
	echo -e '\033[31;40;1m              Kurulum Bitti!'
	sleep 5
	bash $HOME/TermuxTR/basla.sh

#menu 8
elif [[ $islem == 8 || $islem == 08 ]]; then
	clear
	banner
	sleep 2
	cd $HOME
	git clone https://github.com/thelinuxchoice/shellphish.git
	sleep 5
	cd $HOME/shellphish/
	chmod +x *
	echo -e '\033[31;40;1m              Kurulum Bitti!'
	sleep 5
	bash $HOME/TermuxTR/basla.sh

#menu 9
elif [[ $islem == 9 || $islem == 09 ]]; then
	clear
	banner
	sleep 2
	cd $HOME
	git clone https://github.com/thelinuxchoice/saycheese.git
	sleep 5
	cd $HOME/saycheese/
	chmod +x *
	echo -e '\033[31;40;1m              Kurulum Bitti!'
	sleep 5
	bash $HOME/TermuxTR/basla.sh

#menu 10
elif [[ $islem == 10 ]]; then
	clear
	banner
	sleep 2
	cd $HOME
	git clone https://github.com/darkwarrior3/termuxstyling.git
	sleep 5
	cd $HOME/termuxstyling/
	chmod +x *
	bash setup.sh
	sleep 1
	TermuxTR
	echo -e '\033[31;40;1m              Kurulum Bitti!'
	sleep 5
	bash $HOME/TermuxTR/basla.sh
	
#menu 11
elif [[ $islem == 11 ]]; then
	clear
	banner
	sleep 2
	cd $HOME
	git clone https://github.com/adi1090x/termux-style.git
	sleep 5
	cd $HOME/termux-style/
	chmod +x *
	./setup
	echo -e '\033[31;40;1m              Kurulum Bitti!'
	sleep 2
	termux-style

#menu 12
elif [[ $islem == 12 ]]; then
	clear
	banner
	sleep 2 
	apt update
	apt upgrade -y
	pkg install proot -y
	cd $HOME
	git clone https://github.com/Neo-Oli/termux-ubuntu
	sleep 5
	cd termux-ubuntu
	chmod +x *
	bash ubuntu.sh
	sleep 2
	mv -v start-ubuntu.sh /data/data/com.termux/files/usr/bin
	sleep 2
	echo -e '\033[31;40;1m              Kurulum Bitti!'
	sleep 5
	bash $HOME/TermuxTR/basla.sh

#menu 13
elif [[ $islem == 13 ]]; then
	bash $HOME/TermuxTR/RAT-YAP.sh

else
        echo -e '\033[36;40;1m Girdiğniz İşlem Numarasını Kontrol Ediniz....
  5 Saniye içinde ana menüye yönlendirileceksiniz.. '	
	sleep 5
	clear 
	bash basla.sh
	
fi
