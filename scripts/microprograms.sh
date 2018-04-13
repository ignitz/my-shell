# Some microprograms to me xD
# Niitsuma Yuri <ignitzhjfk@gmail.com>
#
# Most of these functions only work with ElementaryOS 0.4 Loki

# Check your wifi interface, maybe wlan0
MY_WIFI_INTERFACE=wlp2s0

# Check if wifi is connected
function check_internet {
	echo 'Checking internet connection'
	sleep 1
	while true; do
		clear
		iwconfig $MY_WIFI_INTERFACE
		sleep 1
	done
}

# Check google.com
function pingar {
	ping www.google.com.br
}

# get permissions from file in octal
function get_chmod {
	stat --format '%a' "$1"
}

# Restart USB services.
# Somehow the USB 3.0 doesn't work with 2TB Hitachi 3.0
function restart_usb {
	echo 'restarting usb service'
	sudo modprobe -r usbhid && sleep 5 && sudo modprobe usbhid
	sudo modprobe -r usb-storage
	sudo modprobe usb-storage
}

# get power from battery
function get_power {
	upower -i $(upower -e | grep 'BAT') | grep -E "state|to\ full|percentage"
}

# get power draining from battery
# BAT1 is for Lenovo S400u on ElementaryOS 0.4 Loki
# If doesn't work, try with 'BAT0'
function get_power_draw {
	while true; do
		awk '{printf $1*10^-6 " W\r"}' /sys/class/power_supply/BAT1/power_now
		sleep 1
	done
}

# get pid
function get_pid {
	return $(ps -p $$ -o ppid=)
}

# get terminal name
function get_terminal_name {
	echo $(ps -p $(ps -p $$ -o ppid=) o args=)
}

# redirect port of SSH on my Victara Android
function port_foward {
	adb forward tcp:8022 tcp:8022
}

# connect with ssh in my Android device
function victara {
	ssh -p 8022 -i ~/Documents/id_rsa
}
