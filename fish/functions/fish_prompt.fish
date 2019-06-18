function fish_prompt --description 'Write out the prompt'
	set -g last_status $status

    # User
    set_color yellow --bold
    echo -n "["
    echo -n (whoami)
    set_color green

    echo -n '@'

    # Host
    set_color blue
    echo -n (prompt_hostname)
    set_color magenta

    echo -n ':'

    # PWD
    set_color red 
    echo -n (prompt_pwd)
    echo -n ']'
    set_color normal

    __terlar_git_prompt
    __fish_hg_prompt
    echo

    if not test $last_status -eq 0
        set_color $fish_color_error
    end

    echo -n '➤ '
    set_color normal
end
