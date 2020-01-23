if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi

alias py3="python3"
alias edit="nano"
alias updt="apt update -y && apt upgrade -y"
alias ipw='dig @resolver1.opendns.com ANY myip.opendns.com +short'
loip=$(ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p')
nifce=$(ip r show | cut -d " " -f 3)

r='\[\e[1;31m\]'
g='\[\e[1;32m\]'
y='\[\e[1;33m\]'
b='\[\e[1;34m\]'
p='\[\e[1;35m\]'
c='\[\e[1;36m\]'
w='\[\e[1;37m\]'

banner () {
re='\e[1;31m'
cy='\e[1;36m'
echo -e "
$re@@@@@@@@ $cy  @@@@@@    @@@@@@    @@@@@@@  @@@ $re @@@@@@  $cy @@@@@@@  @@@ @@@  
$re@@@@@@@@ $cy @@@@@@@   @@@@@@@@  @@@@@@@@  @@@ $re @@@@@@@ $cy @@@@@@@  @@@ @@@  
$re@@!      $cy !@@       @@!  @@@  !@@       @@! $re     @@@ $cy   @@!    @@! !@@  
$re!@!      $cy !@!       !@!  @!@  !@!       !@! $re     @!@ $cy   !@!    !@! @!!  
$re@!!!:!   $cy !!@@!!    @!@  !@!  !@!       !!@ $re @!@!!@  $cy   @!!     !@!@!   
$re!!!!!:   $cy  !!@!!!   !@!  !!!  !!!       !!! $re !!@!@!  $cy   !!!      @!!!   
$re!!:      $cy      !:!  !!:  !!!  :!!       !!: $re     !!: $cy   !!:      !!:    
$re:!:      $cy     !:!   :!:  !:!  :!:       :!: $re     :!: $cy   :!:      :!:    
$re ::      $cy :::: ::   ::::: ::   ::: :::   :: $re :: :::: $cy    ::       ::    
$re :       $cy :: : :     : :  :    :: :: :  :   $re  : : :  $cy    :        :     "
}

banner

PS1="$r KekikAkademi@Termux$g: $b\w$g # "
echo -e '\e[3 q'


#PS1='$ '

#PS1="\[\033[0;37m\]\$? \$(if [[ \$? == 0 ]]; then echo \"\[\033[0;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi) $(if [[ ${EUID} == 0 ]]; then echo '\[\033[0;31m\]\u@\h'; else echo '\[\033[0;32m\]\u@\h'; fi)\[\033[0;34m\] \w \$\[\033[00m\] "

#PS1="\[\033[1;30m\][\@] \[\033[1;37m\]kekikakademi@Termux:\w $ \[\033[0;37m\]"

#cowsay -f eyes '@kekikakademi'
#figlet "Terminal" | pv -qL 500