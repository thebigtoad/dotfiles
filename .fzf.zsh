# Setup fzf
# ---------
if [[ ! "$PATH" == */home/dev/.vim/bundle/fzf/bin* ]]; then
  export PATH="$PATH:/home/dev/.vim/bundle/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/dev/.vim/bundle/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/dev/.vim/bundle/fzf/shell/key-bindings.zsh"

# Use ag to provide the source, including hidden files, ignoring .git but respecting .gitgnore
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

#ag doesn't seem able to list dirs at the moment so stuck with find
#export FZF_ALT_C_COMMAND=''
