#Colours and Git Branch Info
export CLICOLOR=1
export TERM=xterm-color
export LSCOLORS=gxfxcxdxbxegedabagacad  # cyan directories
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\
$(git branch &>/dev/null; if [ $? -eq 0 ]; then \
echo " ($(git branch | grep '^*' |sed s/\*\ //))"; fi) \$ '


#Alias for Sublime Text 2
alias sub='open -a "/Applications/Sublime Text 2.app"'

#Git Commands
alias gitcycle='git stash && git pull --rebase && git stash pop'

#Autocompelete
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

#RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
