#!/bin/bash

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install zsh git curl

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"