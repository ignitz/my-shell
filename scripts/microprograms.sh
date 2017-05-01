function check_internet {
	echo 'Checking internet connection'
	sleep 1
	while true; do
		clear
		iwconfig wlp2s0
		sleep 1
	done
}

function restart_usb {
	sudo modprobe -r usbhid && sleep 5 && sudo modprobe usbhid
	sudo modprobe -r usb-storage
	sudo modprobe usb-storage
}

