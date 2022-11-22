if status is-interactive
    # Commands to run in interactive sessions can go here
    pyenv init - | source

    # Base16 Shell
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
    #base16-3024
    #base16-ashes
    #base16-atelier-lakeside
    base16-chalk
    #base16-harmonic-dark
    #base16-irblack
    #base16-oceanicnext
    #base16-seti

    source $HOME/.config/base16-fzf/fish/base16-$BASE16_THEME.fish

    ln -sf $HOME/.config/base16-waybar/colors/base16-$BASE16_THEME.css $HOME/.config/waybar/scheme.css
    ln -sf $HOME/.config/base16-wofi/themes/base16-$BASE16_THEME.css $HOME/.config/wofi/style.css

    zoxide init fish | source
end

if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]
    exec sway-run
end
