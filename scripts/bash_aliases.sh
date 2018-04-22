# aliases added by Yuri Niitsuma
alias op="xdg-open"
alias finder="find . | grep "
alias untar="tar -xvf"
alias untargz="tar -xzvf"
alias untarbz2="tar -xjvf"
alias unzip="7z x"

# Clear screen, not like 'clear'
alias clear_buf="printf '\033c'"
alias clearbuf="printf '\033c'"

# connect with ssh on my virtual OS
alias mininet="ssh mininet@192.168.56.102 -p 2222"
alias doce="ssh -X yuriniitsuma@doce.grad.dcc.ufmg.br"

# sync my Google Drive with grive
alias syncdrive="(cd ~/Google\ Drive/ && grive sync)"

# shortcut for directories for my undergraduate courses
alias spc="cd ~/src/ufmg/spc"
alias dcccom="cd ~/src/ufmg/2018_1_compilers"
alias dccpdi="cd ~/src/ufmg/2018_1_pdi"
alias dccri="cd ~/src/ufmg/2018_1_ri"

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

