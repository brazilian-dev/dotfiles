#!/bin/bash

source common/functions.sh

# Create your here: http://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20
msg '  _____     ______    ______   ______   __     __         ______     ______    '
msg ' /\  __-.  /\  __ \  /\__  _\ /\  ___\ /\ \   /\ \       /\  ___\   /\  ___\   '
msg ' \ \ \/\ \ \ \ \/\ \ \/_/\ \/ \ \  __\ \ \ \  \ \ \____  \ \  __\   \ \___  \  '
msg '  \ \____-  \ \_____\   \ \_\  \ \_\    \ \_\  \ \_____\  \ \_____\  \/\_____\ '
msg '   \/____/   \/_____/    \/_/   \/_/     \/_/   \/_____/   \/_____/   \/_____/ '
msg '                                                                               '

msg_install "Cloning" "git@github.com:brazilian-dev/dotfiles.git"
git clone git@github.com:brazilian-dev/dotfiles.git $HOME/dotfiles
ok "OK"

sh common/dotfiles.sh