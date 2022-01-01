#!/bin/bash
echo "Homebrew setup script"
echo ""
echo "Installs homebrew, config and major necessary packages."
echo ""

# install brew
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh

# update just in case
brew update

# install postgres/gis
brew install postgresql
brew install postgis
brew services start postgresql
createdb $who_am_i

# git tools
brew install git-filter-repo

# brew doctor
brew doctor -v

# final message
echo "**"
echo "Homebrew is now fully installed!"
echo ""
echo "Please complete as much of the output of the above as you can to ensure your"
echo "Homebrew installation is as solid as possible!"
echo ""
echo "**"