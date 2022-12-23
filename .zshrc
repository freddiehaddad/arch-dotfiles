# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt nomatch
unsetopt autocd beep extendedglob notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/freddiehaddad/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        source "$BASE16_SHELL/profile_helper.sh"

#base16_3024
base16_ashes
#base16_atelier-lakeside
#base16_chalk
#base16_harmonic-dark
#base16_irblack
#base16_oceanicnext
#base16_seti

source $HOME/.config/base16-fzf/bash/base16-$BASE16_THEME.config

ln -sf $HOME/.config/base16-sway/themes/base16-$BASE16_THEME.config $HOME/.config/sway/base16.config
ln -sf $HOME/.config/base16-waybar/colors/base16-$BASE16_THEME.css $HOME/.config/waybar/scheme.css
ln -sf $HOME/.config/base16-wofi/themes/base16-$BASE16_THEME.css $HOME/.config/wofi/style.css

export EDITOR="nvim"
alias vim="nvim"

alias ls="lsd"
alias ll="ls -l"
alias lla="ll -a"

export BAT_THEME="base16"
alias cat="bat"

eval "$(zoxide init zsh)"

source "/usr/share/fzf/completion.zsh"
source "/usr/share/fzf/key-bindings.zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"

if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
	exec sway-run
fi
