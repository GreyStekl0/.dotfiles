function set_day_night_themes
    set -l hour (date "+%H")

    if test $hour -ge 21 -o $hour -lt 7
        # ночь
        set -gx BAT_THEME "Catppuccin Mocha"
        set -gx LG_CONFIG_FILE "$HOME/.config/lazygit/config.yml,$HOME/.config/lazygit/catppuccin-mocha-green.yml"
    else
        # день
        set -gx BAT_THEME "Catppuccin Latte"
        set -gx LG_CONFIG_FILE "$HOME/.config/lazygit/config.yml,$HOME/.config/lazygit/catppuccin-latte-green.yml"
    end
end
