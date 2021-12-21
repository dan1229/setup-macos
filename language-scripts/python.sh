#!/bin/bash
echo "Python setup script"
echo ""
echo "Installs python, environment management tools and major necessary packages."
echo ""

# update brew
brew update

# install python
brew install python

# default to python 3
# TODO

# install pyenv
brew install pyenv

# pyenv config
echo "# pyenv config" >> ~/.zprofile
echo 'eval "$(pyenv init --path)"' >> ~/.zprofile
echo "export PYENV_ROOT="$HOME/.pyenv"" >> ~/.zprofile
echo "export PATH="$PYENV_ROOT/bin:$PATH"" >> ~/.zprofile
echo "" >> ~/.zprofile
echo "# pyenv config" >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
echo 'export PYENV_ROOT=$(pyenv root)' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/shims:$PATH"' >> ~/.zshrc
echo "alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'" >> ~/.zshrc  # fix for brew warning
echo "if command -v pyenv 1>/dev/null 2>&1; then" >> ~/.zshrc 
echo "    eval "$(pyenv init -)"" >> ~/.zshrc 
echo "fi" >> ~/.zshrc 
echo "" >> ~/.zshrc
source ~/.zprofile
source ~/.zshrc

# download most recent version and set
pyenv install $(pyenv install --list | grep --extended-regexp "^\s*[0-9][0-9.]*[0-9]\s*$" | tail -1)
pyenv global $(pyenv install --list | grep --extended-regexp "^\s*[0-9][0-9.]*[0-9]\s*$" | tail -1)

# install virtualenv
brew install pyenv-virtualenv

# auto activate virtualenv
echo ‘eval “$(pyenv virtualenv-init -)”’ >> ~/.zshrc

# install pipenv
pip3 install --user pipenv

# set pipenv path
# echo "# pipenv config" >> ~/.zprofile
# echo "export PYTHON_BIN_PATH="$(python3 -m site --user-base)/bin"" >> ~/.zprofile
# echo "export PATH="$PATH:$PYTHON_BIN_PATH" " >> ~/.zprofile
# echo "" >> ~/.zprofile
# echo "# pipenv config" >> ~/.zshrc
# echo "path+=("$HOME/.local/bin")" >> ~/.zshrc
# echo "export PATH" >> ~/.zshrc
# echo "" >> ~/.zshrc
# source ~/.zprofile
# source ~/.zshrc

# brew doctor
brew doctor -v


# final message
echo "**"
echo "Python is now fully installed!"
echo ""
echo "Please complete as much of the output of the above as you can to ensure your"
echo "Python installation is as solid as possible!"
echo ""
echo "**"