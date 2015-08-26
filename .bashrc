alias la='ls -al'

ANDROID_SDK_HOME="/Users/daylilyfield/Library/Android/sdk"

export PATH=$ANDROID_SDK_HOME/platform-tools:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH

attachToWearable() {
  adb -d forward tcp:5601 tcp:5601
}
