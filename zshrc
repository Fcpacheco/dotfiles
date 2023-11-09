# added by Anaconda3 2019.03 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
# . "/anaconda3/etc/profile.d/conda.sh"  # commented out by conda initialize
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/fabiopacheco/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/fabiopacheco/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/fabiopacheco/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/fabiopacheco/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

echo 'Hello from .zshrc' 



# Set Variables

# Change ZSH Options

# Create Aliases
alias ls='ls -lAFh'


# Custumize Prompt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'



# Add Locations to $PATH Variable

# Write Handy Functions
function mkcd() {
	mkdir -p "$@" && cd "$_";
}


# Use ZSH Plugins

# ...and Others Surprises
