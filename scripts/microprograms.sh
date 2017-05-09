# Some microprograms to me xD
# Niitsuma Yuri <ignitzhjfk@gmail.com>
#
# Most of these functions only work with ElementaryOS 0.4 Loki

# Check if wifi is connected
function check_internet {
	echo 'Checking internet connection'
	sleep 1
	while true; do
		clear
		iwconfig wlp2s0
		sleep 1
	done
}

function pingar {
	ping www.google.com.br
}


# Restart USB services.
# Somehow the USB 3.0 doesn't work with 2TB Hitachi 3.0
function restart_usb {
	echo 'Restarting USB service'
	sudo modprobe -r usbhid && sleep 5 && sudo modprobe usbhid
	sudo modprobe -r usb-storage
	sudo modprobe usb-storage
}

# get power from battery
function getpower {
	upower -i $(upower -e | grep 'BAT') | grep -E "state|to\ full|percentage"
}

# get power draining from battery
# BAT1 is for Lenovo S400u on ElementaryOS 0.4 Loki
# If doesn't work, try with 'BAT0'
function getpowerdraw {
	while true; do
		awk '{printf $1*10^-6 " W\r"}' /sys/class/power_supply/BAT1/power_now
		sleep 1
	done
}
