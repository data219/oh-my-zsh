alias git='LANGUAGE=en_US git'

alias ack='ack-grep'
alias sudp='sudo'

alias open='xdg-open'
alias o='xdg-open'

alias cya='sudo reboot'
alias kthxbai='sudo halt'

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