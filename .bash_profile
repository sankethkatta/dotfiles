source $HOME/.bashrc

# Added by n-install (see http://git.io/n-install-repo)
export N_PREFIX="$HOME/.local/share/nodejs"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

# /opt applications
PATH=$PATH:/opt/gradle/gradle-4.7/bin
PATH=$PATH:/opt/apktool/bin

# Android SDK Home
export ANDROID_HOME=$HOME/.local/share/Android/
