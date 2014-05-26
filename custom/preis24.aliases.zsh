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
