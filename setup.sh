#!/bin/bash
set -x

echo "Running this script assumes you've already have uncrustify installed!"
echo "If not, install brew, http://mxcl.github.com/homebrew/"
echo "then 'brew install uncrustify'"
echo
echo "https://github.com/tonyarnold/Xcode-4-Uncrustify-Automator-Services"

chflags nohidden ~/Library

# https://gist.github.com/261662/
ln -sf $PWD/cocoabots-uncrustify.cfg ~/.uncrustify.cfg

mkdir -p ~/Library/Services
ls -d *.workflow | xargs -I {} rsync -av {}/ ~/Library/Services/{}/

echo "Xcode => Services => Uncrustify *"

