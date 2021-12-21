#!/bin/bash
echo "Homebrew setup script"
echo ""
echo "Installs homebrew, config and major necessary packages."
echo ""

# install brew
$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)


# install major brew packages
brew install gh
brew tap heroku/brew && brew install heroku
brew install postgres

# brew doctor
brew doctor -v


# final message
echo "**"
echo "Please complete as much of the output of the above as you can to ensure your"
echo "Homebrew installation is as solid as possible!"
echo ""
echo "**"