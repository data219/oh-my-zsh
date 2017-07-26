alias dexec="sudo docker exec -i -t grs-container"
alias dsf="dexec /var/www/html/grs.cocomore.com/app/console"
alias grs-qa='MOCHA=$(which mocha) PHPUNIT=$(which phpunit) ./scripts/qa-suite.sh'
