alias git='LANGUAGE=en_US git'

alias ack='ack-grep'
alias sudp='sudo'
alias sudi='sudo -i'
alias jeo=joe

alias sjoe='SUDO_EDITOR=joe sudoedit'
alias skate='SUDO_EDITOR=kate sudoedit'

alias open='xdg-open'
alias o='xdg-open'

alias cya='sudo reboot'
alias kthxbai='sudo halt'
alias byebye='sudo halt'
alias n8='sudo halt'

alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

alias genghis='php -S 0.0.0.0:8080 ~/bin/genghis.php'
alias xdebug-off='sudo phpdismod xdebug'
alias xdebug-on='sudo phpenmod xdebug'
alias xdoff='xdebug-off'
alias xdon='xdebug-on'

alias php.ini='sudo joe /etc/php/cli/php.ini'

alias make-pull-request='bin/phpunit -c app/ && git push -f && git log -1 --format=format:"%s" | hub pull-request -F -'
alias make-pr='make-pull-request'
alias pr='make-pull-request'
alias get-lost='pr'

alias qa-serve='bin/analyze serve --hostname=0.0.0.0 -p8888 NUL &!'

alias delete.old.kernels="sudo apt-get autoremove --purge 'linux-image-[0-9].*' linux-image-$(uname -r)+"
alias rm.bak="find . -type f -name '*~' -delete"

alias x0vncserver='x0vncserver -PasswordFile=/home/markmann/.vnc/passwd'

alias mirror='wget -mkEpnp'

alias -s php=$EDITOR
alias -s md=$EDITOR

alias apt='apt-fast'