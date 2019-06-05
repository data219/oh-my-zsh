# graph it stuff
alias dropbox.start='/opt/dropbox-filesystem-fix/dropbox_start.py'
alias ds='dropbox.start'
alias vpn.start='sudo vpnc fritz.conf'
alias vpn.stop='sudo vpnc-disconnect'
alias mount.openhab.config='sshfs voyager:/etc/openhab2/ ~/share/openhab'
alias unmount.openhab.config='fusermount -u ~/share/openhab'
alias mount.screwerk.graph='sshfs screwerk-graph:/var/lib/graph ~/share/screwerk-graph'
alias unmount.screwerk.graph='fusermount -u ~/share/screwerk-graph'