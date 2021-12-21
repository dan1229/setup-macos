#!/bin/bash
echo "Flutter setup script"
echo ""
echo "Installs Flutter, Dart and major tools."
echo ""

# install dart
brew tap dart-lang/dart
brew install dart
echo "# dart config" >> ~/.zshrc
echo "export PATH="$PATH:$HOME/.pub-cache/bin"" >> ~/.zshrc
echo ""
source ~./zshrc

# install fvm
dart pub global activate fvm

# install latest
fvm install stable
fvm global stable

# flutter/fvm config
echo "# fvm config" >> ~/.zshrc
echo "export FVM_HOME="$HOME/fvm/default/bin"" >> ~/.zshrc
echo ""
echo "# flutter config" >> ~/.zshrc
echo "export PATH="$PATH:$HOME/fvm/default/bin"" >> ~/.zshrc
echo ""
source ~./zshrc

# run doctor
fvm doctor

# final message
echo "**"
echo "Flutter is now fully installed!"
echo ""
echo "Please complete as much of the output of the above as you can to ensure your"
echo "Flutter installation is as solid as possible!"
echo ""
echo "**"