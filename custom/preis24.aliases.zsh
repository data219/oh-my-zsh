# p24-web 1.0 stuff
alias mount.soprado-dev='sshfs soprado-dev: ~/mnt/soprado-dev'
alias rsync.from.soprado-dev='rsync -avrz --exclude="^var/cache/" --progress -e ssh --exclude=cache soprado-dev:work/p24-web/ /home/markmann/workspace/p24-web/'
alias rsync.to.soprado-dev='rsync -avrz --exclude="var/cache/" --progress -e ssh --exclude=cache /home/markmann/workspace/p24-web/ soprado-dev:work/p24-web/'
alias rsync.from.soprado-dev2='rsync -avrz --exclude="^var/cache/" --progress -e ssh --exclude=cache soprado-dev:work/p24-web2/ /home/markmann/workspace/p24-web/'
alias rsync.to.soprado-dev2='rsync -avrz --exclude="var/cache/" --progress -e ssh --exclude=cache /home/markmann/workspace/p24-web/ soprado-dev:work/p24-web2/'
alias p24php.markmann='APPLICATION_ENV=markmann php'
alias p24php.prodjoker='APPLICATION_ENV=prodjoker php'
alias p24php='p24php.markmann'
alias mysql.p24dev='mysql -A -C -h joker4.schumann.net -u p24 -P 3306 -ppbjzcKc7uUduNxWu p24-dev'
alias selenium-server='java -jar /home/markmann/bin/selenium-server-standalone.jar -Dwebdriver.chrome.driver=/home/markmann/bin/chromedriver'
alias myphpsh='APPLICATION_ENV=markmann phpsh CronjobInit.php'
alias myphpsh.prod='APPLICATION_ENV=prodjoker phpsh CronjobInit.php'
alias ooservice='soffice --headless --accept="socket,host=127.0.0.1,port=8100;urp;" --nofirststartwizard'

# 2.0 stuff
alias rsync.from.dev.cash='rsync -avrzL --exclude="^app/cache/" --exclude="^app/logs" --progress -e ssh development:/opt/development/cash/www/ /home/markmann/workspace/CASH/'
alias rsync.to.dev.cash='rsync -avrzL --exclude="^app/cache/" --exclude="^app/logs" --progress -e ssh /home/markmann/workspace/CASH/ development:/opt/development/cash/www/'

# cash
alias cash.demo='cd ~cash && watch -n 120 "php app/console doctrine:mongodb:fixtures:load" NUL & php app/console p24:cash:pulse -d -p 3'
alias cash.consumers.start="tmpfile=$(mktemp) && echo -e 'startup_message off\nscreen -t deliver_telekom /home/markmann/workspace/CASH/app/console rabbitmq:consumer -w application_delivery_telekom\nsplit\nfocus\nscreen -t deliver_vodafone /home/markmann/workspace/CASH/app/console rabbitmq:consumer -w application_delivery_vodafone\nsplit\nfocus\nscreen -t deliver_simfinity /home/markmann/workspace/CASH/app/console rabbitmq:consumer -w application_delivery_simfinity\nsplit\nfocus\nscreen -t deliver_o2 /home/markmann/workspace/CASH/app/console rabbitmq:consumer -w application_delivery_o2' > $tmpfile && sudo screen -c $tmpfile"