# keyboard
abbr cpl2ctl xmodmap ~/.Xmodmap
# file management
abbr trash gio trash
# emacs
abbr ec emacsclient -c
abbr ecf "emacsclient -c (fzf)"
# pacman
abbr upd "sudo pacman -Syu" # update
abbr ipkg "sudo pacman -S" # install package
abbr rmpkg "sudo pacman -Rsn" # remove package
abbr spkg "sudo pacman -Ss" # search package
abbr rmop "sudo pacman -Rsn (pacman -Qdtq)" # remove orphans
abbr fpkg "pacman -Q | fzf" # find installed package

# miniconda config
if test -d $HOME/miniconda3
   source $HOME/miniconda3/etc/fish/conf.d/conda.fish
end

# remove the greeting
set fish_greeting
