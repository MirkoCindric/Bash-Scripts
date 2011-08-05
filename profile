export CLICOLOR=1
export TERM=xterm-color
export LSCOLORS=gxfxcxdxbxegedabagacad  # cyan directories
# export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ \`ruby -e \"print (%x{git branch 2> /dev/null}.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`\[\033[37m\]$\[\033[00m\] "
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\
$(git branch &>/dev/null; if [ $? -eq 0 ]; then \
echo " ($(git branch | grep '^*' |sed s/\*\ //))"; fi) \$ '


#Alias for Sublime Text 2
alias sub='open -a "/Applications/Sublime Text 2.app"'
