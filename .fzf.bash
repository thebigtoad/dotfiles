# Setup fzf
# ---------
if [[ ! "$PATH" == */home/dev/.vim/bundle/fzf/bin* ]]; then
  export PATH="$PATH:/home/dev/.vim/bundle/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/dev/.vim/bundle/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/dev/.vim/bundle/fzf/shell/key-bindings.bash"

