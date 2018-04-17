alias sfsh='sf -s'
alias sf-server-start='sf server:start 0.0.0.0:8000'
alias sf-server-stop='sf server:stop 0.0.0.0:8000'
alias sf-server=sf-server-start
alias sfunit='bin/phpunit'
alias sf-php-cs-fixer='php-cs-fixer fix --verbose --level=symfony --fixers=align_equals,align_double_arrow,ordered_use,short_array_syntax --config=sf23 .'
alias sf-php-cs-fixer-list='php-cs-fixer list --verbose --level=symfony --fixers=align_equals,align_double_arrow,ordered_use,short_array_syntax --config=sf23 .'
alias sf-realclean='rm -rf var/cache/* && rm -rf vendor/* && composer install && sf cache:warm'