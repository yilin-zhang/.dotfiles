# keyboard
abbr cpl2ctl xmodmap ~/.Xmodmap
# file management
abbr trash gio trash
# emacs
abbr ec emacsclient -c
abbr ecf "emacsclient -c (fzf)"
# pacman
abbr upd "sudo pacmatic -Syu" # update
abbr ipkg "sudo pacman -S" # install package
abbr rmpkg "sudo pacman -Rsn" # remove package
abbr spkg "yay -Ss" # search package
abbr rmop "sudo pacman -Rsn (pacman -Qdtq)" # remove orphans
abbr fpkg "pacman -Q | fzf" # find installed package

# miniconda config
if test -d $HOME/miniconda3
   source $HOME/miniconda3/etc/fish/conf.d/conda.fish
end

# rbenv config
if test -d $HOME/.rbenv
   set PATH /$HOME/.rbenv/bin $PATH
   status --is-interactive; and source (rbenv init -|psub)
end

# remove the greeting
set fish_greeting
