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
