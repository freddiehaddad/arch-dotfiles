if status is-interactive
    if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]
        exec sway-run
    end

    # Commands to run in interactive sessions can go here
    pyenv init - | source

    # Base16 Shell
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
    base16-ashes

    source $HOME/.config/base16-fzf/fish/base16-$BASE16_THEME.fish

    zoxide init fish | source
end
