#!/bin/bash

echo "backing up bin"
cd ~/Dev/Config/bin
git add .
git commit -m "updated biniaries"
git push origin master

echo "backing up Atom"
cd ~/Dev/Config/Atom
apm list --installed --bare > packages.list
git add .
git commit -m "updated atom preferences"
git push origin mac

echo "backing up brew"
cd ~/Dev/Config/Brew
brew list > packages.list
brew cask list > casks-all.list
git add .
git commit -m "updated brew packages"
git push origin mac

echo "backing up git"
cd ~/Dev/Config/Git/
git add gitcustom.txt
git commit -m "updated git preferences"
git push origin mac

echo "backing up installer"
cd ~/Dev/Config/Installer
git add .
git commit -m "updated installer preferences"
git push origin mac

echo "backing up iterm"
cd ~/Dev/Config/iTerm
git add .
git commit -m "updated iterm preferences"
git push origin mac

echo "backing up zsh"
cd ~/Dev/Config/ZSH
git add .
git commit -m "updated zsh preferences"
git push origin mac

echo "backing up launchd"
cd ~/Dev/Config/LaunchAgents
git add .
git commit -m "updated jobs"
git push origin master

echo "backing up css snippets"
cd ~/Dev/Config/Atom-packages/puddletown-css-snippets
git add .
git commit -m "updated snippets"
git push origin master

echo "backing up d3 snippets"
cd ~/Dev/Config/Atom-packages/puddletown-d3-snippets
git add .
git commit -m "updated snippets"
git push origin master

echo "backing up gulp snippets"
cd ~/Dev/Config/Atom-packages/puddletown-gulp-snippets
git add .
git commit -m "updated snippets"
git push origin master

echo "backing up HTML snippets"
cd ~/Dev/Config/Atom-packages/puddletown-html-snippets
git add .
git commit -m "updated snippets"
git push origin master

echo "backing up javascript browser snippets"
cd ~/Dev/Config/Atom-packages/puddletown-javascript-browser-snippets
git add .
git commit -m "updated snippets"
git push origin master

echo "backing up javascript node snippets"
cd ~/Dev/Config/Atom-packages/puddletown-javascript-node-snippets
git add .
git commit -m "updated snippets"
git push origin master

echo "backing up javascript snippets"
cd ~/Dev/Config/Atom-packages/puddletown-javascript-snippets
git add .
git commit -m "updated snippets"
git push origin master

echo "backing up react snippets"
cd ~/Dev/Config/Atom-packages/puddletown-react-snippets
git add .
git commit -m "updated snippets"
git push origin master

echo "backing up HTML language"
cd ~/Dev/Config/Atom-packages/puddletown-language-html
git add .
git commit -m "updated snippets"
git push origin master

cd ~/Desktop
