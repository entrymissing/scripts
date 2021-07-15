#!/bin/bash

sudo apt-get install -y ruby-full build-essential zlib1g-dev
CONTAINS=$(grep "export GEM_HOME" ~/.bashrc | wc -l)
if [ $CONTAINS -eq 0 ] 
then
  echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
  echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
  echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
  source ~/.bashrc
fi
gem install jekyll bundler
