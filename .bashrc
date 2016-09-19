# Add a new line at the end of the command prompt
PS1=${PS1%?}
PS1=${PS1%?}\n'$ '

# for VIM and TMUX
if [ "$TERM" = "xterm" ]; then
    export TERM=xterm-256color
fi
