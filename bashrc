alias e='subl . >/dev/null 2>/dev/null'

export EDITOR="nano"
export BROWSER="opera"
export PS1="[\W \A] "
export PATH=~/bin:$PATH 

unset HISTFILE
unset SSH_ASKPASS

ulimit -c unlimited

export LC_CTYPE=en_US.UTF-8
export LANG=C
unset LC_ALL

export ANDROID_HOME=/opt/android-sdk
export ANDROID_NDK_ROOT=/opt/android-ndk

randpass () {
    </dev/urandom tr -dc 'A-Za-z0-9' | head -c${1-10}
    echo
}

jumpto () {
    local vm="/dcs/vm"
    cd ${!1}
}

j () { jumpto $* ; }
