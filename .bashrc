# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# added by Anaconda3 installer
export PATH="/home/plm/app/anaconda3/bin:$PATH"

alias tas="tmux a -t 0"

bash -c zsh

[[ -s /home/plm/.autojump/etc/profile.d/autojump.sh ]] && source
/home/plm/.autojump/etc/profile.d/autojump.sh
