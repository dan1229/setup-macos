#!/bin/bash
echo "CLI tool setup script"
echo ""
echo "Installs major CLI tools like GitHub, Heroku and Git config."
echo ""

# brew
brew update
brew install gh
brew tap heroku/brew && brew install heroku

# git global config
git config --global user.email "danielnazarian@outlook.com"
git config --global user.name "Daniel Nazarian"

# setup heroku cli
heroku login

# setup github cli
gh auth login

# setup aws cli
# TODO


# final message
echo "**"
echo "CLI tools are now fully installed!"
echo ""
echo "Please complete as much of the output of the above as you can to ensure your"
echo "tool installation is as solid as possible!"
echo ""
echo "**"