# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/freddiehaddad/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export PATH="$HOME/.local/bin:$PATH"

# git clone https://github.com/chriskempson/base16-shell
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

# git clone https://github.com/tinted-theming/base16-fzf
source $HOME/.config/base16-fzf/bash/base16-$BASE16_THEME.config

# git clone https://github.com/rkubosz/base16-sway
ln -sf $HOME/.config/base16-sway/themes/base16-$BASE16_THEME.config $HOME/.config/sway/base16.config

# git clone https://github.com/mnussbaum/base16-waybar
ln -sf $HOME/.config/base16-waybar/colors/base16-$BASE16_THEME.css $HOME/.config/waybar/scheme.css

# git clone https://git.sr.ht/~knezi/base16-wofi
ln -sf $HOME/.config/base16-wofi/themes/base16-$BASE16_THEME.css $HOME/.config/wofi/style.css

# pacman -S zsh-autosuggestions
# pacman -S zsh-completions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# pacman -S neovim
export EDITOR="nvim"
alias vim="nvim"

# pacman -S lsd
if [ $DISPLAY ]; then
	alias ls="lsd"
else
	alias ls="ls --color"
fi

alias ll="ls -l"
alias lla="ll -a"

# pacman -S bat
export BAT_THEME="base16"
alias cat="bat"

# pacman -S zoxide
eval "$(zoxide init zsh)"

# pacman -S fzf
source "/usr/share/fzf/completion.zsh"
source "/usr/share/fzf/key-bindings.zsh"

# pacman -S starship
# pacman -S ttf-iosevka-nerd
# starship preset nerd-font-symbols > ~/.config/starship.toml
if [ $DISPLAY ]; then
	eval "$(starship init zsh)"
fi

# Launch Sway
if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
	#exec sway-run --debug
	exec sway-run
fi
