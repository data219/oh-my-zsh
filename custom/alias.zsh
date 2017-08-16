alias git='LANGUAGE=en_US git'

alias ack='ack-grep'
alias sudp='sudo'
alias jeo=joe

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
alias rm.bak='find . -type f -name '*~' -delete'

alias yubilock.enable='sudo mv /etc/udev/rules.d/85-yubikey-screen-lock.rules.disabled /etc/udev/rules.d/85-yubikey-screen-lock.rules'
alias yubilock.disable='sudo mv /etc/udev/rules.d/85-yubikey-screen-lock.rules /etc/udev/rules.d/85-yubikey-screen-lock.rules.disabled'
alias yubilock.exemption='yubilock.disable && read -k1 -s "?Remove Yubikey and press any key to continue... " && yubilock.enable'
alias ylen=yubilock.enable
alias yldi=yubilock.disable
alias ylex=yubilock.exemption