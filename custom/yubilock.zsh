alias yubilock.enable='sudo mv /etc/udev/rules.d/80-yubilock.rules.disabled /etc/udev/rules.d/80-yubilock.rules > /dev/null 2>&1'
alias yubilock.disable='sudo mv /etc/udev/rules.d/80-yubilock.rules /etc/udev/rules.d/80-yubilock.rules.disabled > /dev/null 2>&1'
alias yubilock.exemption='yubilock.disable && read -k1 -s "?Remove Yubikey and press any key to continue... " && yubilock.enable'
alias ylen=yubilock.enable
alias yldi=yubilock.disable
alias ylex=yubilock.exemption