function set_bat_theme
    set -l hour (date "+%H")

    if test $hour -ge 23 -o $hour -lt 7
        set -gx BAT_THEME "Catppuccin Mocha"   # ночь
    else
        set -gx BAT_THEME "Catppuccin Latte"   # день
    end
end
