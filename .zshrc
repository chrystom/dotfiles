# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
zstyle :compinstall filename '/home/chrystom/.zshrc'

autoload -Uz compinit promptinit
compinit -d $HOME/.cache/zsh/.zcompdump
promptinit

# bind ctrl + l/r arrowkeys
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# bind deleting using ctrl+bkspace/del
bindkey '^H' backward-kill-word
bindkey '^[[3;5~' kill-word

# fix del key
bindkey "^[[3~" delete-char

# prompt customisation
#alias ls='ls --color=auto'
alias grep='grep --color=auto'
export PS1="[%{%F{57}%}%n%{%F{216}%}@%{%F{166}%}%m %{%F{125}%}%1~ %{%f%}] $ "

# clear backbuffer
function clear-screen-and-scrollback() {
    printf '\x1Bc'
    zle clear-screen
}

zle -N clear-screen-and-scrollback
bindkey '^L' clear-screen-and-scrollback

# more features!
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh



# dotfiles alias
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
export PATH=/home/chrystom/.local/bin:/home/chrystom/.cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/var/lib/flatpak/exports/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl
