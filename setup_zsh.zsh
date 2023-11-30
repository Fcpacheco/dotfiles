#!/usr/bin/env zsh

echo "\n<<< Starting ZSH Setup >>>\n"

# Instalation unnecessary; it's in the brewfile.

echo "Enter superuser (sudo) password to edit /etc/shells"
echo '/usr/local/bin/zsh' | sudo tee -a '/etc/shells'

echo "Enter user password to change login shell"
chsh -s '/usr/local/bin/zsh'