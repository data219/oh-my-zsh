alias git='LANGUAGE=en_US git'

alias sudp='sudo'
alias sudi='sudo -i'
alias jeo=joe

alias sjoe='SUDO_EDITOR=joe sudoedit'
alias skate='SUDO_EDITOR=kate sudoedit'

alias open='xdg-open'
alias o='xdg-open'

alias cya='sudo reboot'
alias kthxbai='sudo halt'
alias byebye='sudo halt'
alias n8='sudo halt'

alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

alias delete.old.kernels="sudo apt-get autoremove --purge 'linux-image-[0-9].*' linux-image-$(uname -r)+"
alias rm.bak="find . -type f -name '*~' -delete"

alias mirror='wget -mkEpnp'

alias -s php=$EDITOR
alias -s md=$EDITOR

alias apt='apt-fast'
