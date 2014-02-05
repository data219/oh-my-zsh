alias git='LANGUAGE=en_US git'

alias mount.gdrive='google-drive-ocamlfuse ~/mnt/gdrive'
alias mount.soprado-dev='sshfs soprado-dev: ~/mnt/soprado-dev'

alias rsync.from.soprado-dev='rsync -avrz --exclude="^var/cache/" --progress -e ssh --exclude=cache soprado-dev:work/p24-web/ /home/markmann/workspace/p24-web/'
alias rsync.to.soprado-dev='rsync -avrz --exclude="var/cache/" --progress -e ssh --exclude=cache /home/markmann/workspace/p24-web/ soprado-dev:work/p24-web/'

alias ack='ack-grep'