#!/bin/bash

apt-get install git
git clone https://github.com/git-action-katacoda/github-action-katacoda.git
git config --global user.name "katacoda"
git config --global user.email git-action-katacoda@mail.com
#password: "Aaa12312."
cd github-action-katacoda
rm -rf *
touch README.md
echo "# Github Action" > README.md
