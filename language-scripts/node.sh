#!/bin/bash
echo "Node setup script"
echo ""
echo "Installs node, environment management tools and major necessary packages."
echo ""

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# install nvm variables
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# install and use latest
nvm install node
nvm use node

# install typescript
npm install --global typescript

# install nextjs
npm install -global next

# final message
echo "**"
echo "Node is now fully installed!"
echo "**"