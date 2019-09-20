function fish_right_prompt -d "Write out the right prompt"
    if not test $last_status -eq 0
        set_color $fish_color_error
    else
        set_color green
    end

    echo -n "↵ "
    echo -n $last_status
    set_color normal

    set -e last_status

    echo -n " ◷ "
    date '+%H:%M:%S'
end
