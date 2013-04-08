export EDITOR="nano"
export PS1="[\W \A] "
export PATH=~/bin:$PATH 

unset HISTFILE

export LC_CTYPE=en_US.UTF-8
export LANG=C
unset LC_ALL

function ghclone {
  git clone git@github.com:catwell/$1.git
}

function ghupstream {
  git remote add upstream git@github.com:$1.git
}

# http://coderwall.com/p/euwpig?i=3&p=1&t=git
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
