#!/bin/bash

# git global config
git config --global user.email "danielnazarian@outlook.com"
git config --global user.name "Daniel Nazarian"

# setup heroku cli
heroku login

# setup github cli
gh auth login

# setup aws cli
# TODO