### aliases added by Yuri Niitsuma
# I like open command from macOS, but in linux 'open' is a reserved command
alias op="xdg-open"
# search file by name
alias finder="find . | grep "
# extract packet files
alias untar="tar -xvf"
alias untargz="tar -xzvf"
alias untarbz2="tar -xjvf"
# alias unzip="7z x"

# too longo program name on ElementaryOS
# disable if you use gnome or gedit
alias gedit="scratch-text-editor"

# Clear screen, not like 'clear'
alias clearbuf="printf '\033c'"

# connect with ssh on my virtual OS Mininet
# alias mininet="ssh mininet@192.168.56.102 -p 2222"

# UFMG
alias doce="ssh -X yuriniitsuma@doce.grad.dcc.ufmg.br"
# shortcut for directories for my undergraduate courses
alias spc="cd ~/src/ufmg/spc"
alias dccnat="cd ~/src/ufmg/2018_2_compnat"
alias dccmin="cd ~/src/ufmg/2018_2_datamining"
alias dccgame="cd ~/src/ufmg/2018_2_gamedev"
alias dccri="cd ~/src/ufmg/2018_1_ri"
alias playg="cd ~/src/playground"

# sync my Google Drive with grive
# alias syncdrive="(cd ~/Google\ Drive/ && grive sync)"

# Get microprograms in bash
if [ -f ~/scripts/microprograms.sh ]; then
	source ~/scripts/microprograms.sh
fi

# Notify when someone connect to SSH on my computer
IP="$(echo $SSH_CONNECTION | cut -d " " -f 1)"
HOSTNAME=$(hostname)
NOW=$(date +"%e %b %Y, %a %r")

if [ $IP ]; then
	DISPLAY=:0 notify-send 'Someone from '$IP' logged into '$HOSTNAME' on '$NOW' via SSH.'
fi

