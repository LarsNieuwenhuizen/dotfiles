### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
set --export --prepend PATH "/Users/lars/.rd/bin"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
starship init fish | source

function fish_greeting
    set -l messages "Let's code!" "Ship it!" "Hello Lars" "Time to build"

    set -l hour (date +%H)
    if test $hour -lt 12
        set -a messages "Good morning"
    else if test $hour -lt 18
        set -a messages "Good afternoon"
    else
        set -a messages "Good evening"
    end

  figlet -f (random choice standard slant big small) (random choice $messages) | lolcat
end
