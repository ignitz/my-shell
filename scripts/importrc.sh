anaconda2() {
# added by Anaconda2 installer
	export PATH="/home/yuri/anaconda2/bin:$PATH"
}

anaconda3() {
# added by Anaconda3 installer
	export PATH="/home/yuri/anaconda3/bin:$PATH"
}

# Node Version Manager
# If you want to install NodeJS without root permission
nvm() {
	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
}

# import RUST binary files
export PATH=$PATH:$HOME/.cargo/bin

# Android SDK
# Set your Android Folder here
export ANDROID_HOME=$HOME/Android/Sdk

export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$HOME/App/android-studio/bin

# Need for Compilers course from Stanford
# export PATH=/usr/class/cs143/bin:$PATH

