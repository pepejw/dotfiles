#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ $- == *i* ]] && source ~/.local/share/blesh/ble.sh --noattach

eval "$(zoxide init --cmd cd bash)"
eval $(fzf --bash)
eval "$(oh-my-posh init bash --config ~/.config/ohmyposh/config.toml)"
{ eval `ssh-agent`; ssh-add ~/.ssh/id_ed25519; } &>/dev/null


source /usr/share/doc/pkgfile/command-not-found.bash



alias off='shutdown now'
alias ls='eza -a'
alias grep='grep --color=auto'


bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

[[ -f /usr/share/bash-preexec/bash-preexec.sh ]] && source /usr/share/bash-preexec/bash-preexec.sh

[[ ${BLE_VERSION-} ]] && ble-attach
