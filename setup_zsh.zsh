#!/usr/bin/env zsh

echo "\n<<< Starting ZSH Setup >>>\n"

# Installation unnecessary; it's in the Brewfile.

# Path to Homebrew-installed ZSH
zsh_path="/usr/local/bin/zsh"
# Check if the shell path is already in /etc/shells
if ! grep -Fxq "$zsh_path" /etc/shells; then
    # Add the new shell to the list
    echo "Enter superuser (sudo) password to edit /etc/shells"
    echo "$zsh_path" | sudo tee -a '/etc/shells' >/dev/null
else
    echo '/usr/local/bin/zsh already exists in /etc/shells'
fi

# Check if the user's shell is already set to the new shell
if [ "$SHELL" != "$zsh_path" ]; then
    # Change the user's login shell
    echo "Enter user password to change login shell"
    chsh -s "$zsh_path"
else
    echo '$SHELL is already /usr/local/bin/zsh'
fi