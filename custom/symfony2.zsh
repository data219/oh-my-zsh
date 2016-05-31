alias sf='php app/console'
alias sfsh='php app/console -s'
alias sf-server-start='php app/console server:start 0.0.0.0:8000'
alias sf-server-stop='php app/console server:stop 0.0.0.0:8000'
alias sf-server=sf-server-start
alias sfunit='bin/phpunit -c app/'
alias sf-php-cs-fixer='php-cs-fixer fix --verbose --level=symfony --fixers=align_equals,align_double_arrow,ordered_use,short_array_syntax --config=sf23 .'
alias sf-fixtures='php app/console doctrine:mongodb:fixtures:load'
alias sf-clean='rm -rf app/cache/* && rm -rf vendor/* && composer install && sf cache:warm && sf-fixtures'