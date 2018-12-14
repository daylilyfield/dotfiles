alias la='ls -al'
alias ctags='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

ANDROID_SDK_HOME="/Users/daylilyfield/Library/Android/sdk"

export PATH=$ANDROID_SDK_HOME/platform-tools:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH

android__attach_to_wearable_emulator() {
  adb -d forward tcp:5601 tcp:5601
}

android__enable_bluetooth_debug() {
  adb forward tcp:4444 localabstract:/adb-hub
  adb connect localhost:4444
}


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
