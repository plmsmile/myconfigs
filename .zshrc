export ZSH=/home/plm/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="ys"

ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" "ys")


DISABLE_AUTO_UPDATE="true"

# tab 补全
COMPLETION_WAITING_DOTS="true"


HIST_STAMPS="yyyy-mm-dd"
set HIST_IGNORE_DUPS

plugins=(
  git
  autojump
)
[[ -s /home/plm/.autojump/etc/profile.d/autojump.sh ]] && source /home/plm/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

source $ZSH/oh-my-zsh.sh
# export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:${PATH}"


export LANG=en_US.UTF-8

# alias

alias cls='clear'
alias ll='ls -l'
alias la='ls -a'
alias grep="grep --color=auto"
alias -s html='vim'   # 在命令行直接输入后缀为 html 的文件名，会在 Vim 中打开
alias -s rb='vim'     # 在命令行直接输入 ruby 文件，会在 Vim 中打开
alias -s py='vim'      # 在命令行直接输入 python 文件，会用 vim 中打开，以下类似
alias -s js='vim'
alias -s c='vim'
alias -s cpp='vim'
alias -s java='vim'
alias -s txt='vim'
alias -s gz='tar -xzvf' # 在命令行直接输入后缀为 gz 的文件名，会自动解压打开
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias blogin="sh ~/.login.sh"
alias blogout="sh ~/.logout.sh"


## Functions ####
function ftppath(){
    if [ -z $1 ]; then
        echo "Argument \$1: file required!" && return 1
    fi
    file=$1
    echo "ftp://$(hostname)$(realpath ${file})"
}
