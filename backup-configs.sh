#!/bin/bash

echo "backing up bin"
cd ~/Documents/Dev/bin
git add .
git commit -m "updated biniaries"
git push origin master

# echo "backing up brew"
# cd ~/Documents/Dev/Brew
# brew list > packages.list
# brew cask list > casks-all.list
# git add .
# git commit -m "updated brew packages"
# git push origin mac

echo "backing up git"
cd ~/Documents/Dev/Git/
git add .
git commit -m "updated git preferences"
git push origin mac

echo "backing up installer"
cd ~/Documents/Dev/Installer
git add .
git commit -m "updated installer preferences"
git push origin mac

echo "backing up iterm"
cd ~/Documents/Dev/iTerm
git add .
git commit -m "updated iterm preferences"
git push origin mac

echo "backing up zsh"
cd ~/Documents/Dev/ZSH
git add .
git commit -m "updated zsh preferences"
git push origin mac

echo "backing up launchd"
cd ~/Documents/Dev/LaunchAgents
git add .
git commit -m "updated jobs"
git push origin master

echo "backing up css snippets"
cd ~/Documents/Dev/Atom-packages/puddletown-css-snippets
git add .
git commit -m "updated snippets"
git push origin master

echo "backing up d3 snippets"
cd ~/Documents/Dev/Atom-packages/puddletown-d3-snippets
git add .
git commit -m "updated snippets"
git push origin master

echo "backing up gulp snippets"
cd ~/Documents/Dev/Atom-packages/puddletown-gulp-snippets
git add .
git commit -m "updated snippets"
git push origin master

echo "backing up HTML snippets"
cd ~/Documents/Dev/Atom-packages/puddletown-html-snippets
git add .
git commit -m "updated snippets"
git push origin master

echo "backing up javascript browser snippets"
cd ~/Documents/Dev/Atom-packages/puddletown-javascript-browser-snippets
git add .
git commit -m "updated snippets"
git push origin master

echo "backing up javascript node snippets"
cd ~/Documents/Dev/Atom-packages/puddletown-javascript-node-snippets
git add .
git commit -m "updated snippets"
git push origin master

echo "backing up javascript snippets"
cd ~/Documents/Dev/Atom-packages/puddletown-javascript-snippets
git add .
git commit -m "updated snippets"
git push origin master

echo "backing up react snippets"
cd ~/Documents/Dev/Atom-packages/puddletown-react-snippets
git add .
git commit -m "updated snippets"
git push origin master

echo "backing up HTML language"
cd ~/Documents/Dev/Atom-packages/puddletown-language-html
git add .
git commit -m "updated snippets"
git push origin master

cd ~/Desktop
