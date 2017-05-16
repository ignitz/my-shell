# aliases added by Yuri Niitsuma
alias op="xdg-open"
alias finder="find . | grep "
alias untar="tar -xvf"
alias untargz="tar -xzvf"
alias untarbz2="tar -xjvf"
alias unzip="7z x"

# Clear screen, not like 'clear'
alias clear_buf="printf '\033c'"

# connect to my website
alias conectar="ssh niitsuma@niitsuma.com.br"

# connect with ssh on my virtual OS
alias mininet="ssh mininet@192.168.56.102 -p 2222"

# sync my Google Drive with grive
alias syncdrive="(cd ~/Google\ Drive/ && grive sync)"

# shortcut for directories for my undergraduate courses
alias dcc023="cd ~/src/ufmg/2017_1_dcc023/tp/tp0/src"
alias dcc011="cd ~/src/ufmg/2017_1_dcc011"
alias dcc199="cd ~/src/ufmg/2017_1_dcc199"
alias icv="cd ~/src/ufmg/2017_1_dcc030_icv"
alias let200="cd ~/src/ufmg/2017_1_let200"
alias spc="cd /home/yuri/src/ufmg/spc/solutions"

alias playg="cd ~/src/playground"

# Get the codes of courses in this semester
alias get_names="cat ~/src/ufmg/name.txt"

# Get microprograms in bash
if [ -f ~/scripts/microprograms.sh ]; then
	source ~/scripts/microprograms.sh
fi

# Notify when someone connect to SSH
IP="$(echo $SSH_CONNECTION | cut -d " " -f 1)"
HOSTNAME=$(hostname)
NOW=$(date +"%e %b %Y, %a %r")

if [ $IP ]; then
	DISPLAY=:0 notify-send 'Someone from '$IP' logged into '$HOSTNAME' on '$NOW' via SSH.'
fi

