source common/functions.sh

# .ssh/config
if [ -f "ssh/config" ]; then
    msg_installing "~/.ssh/config"
    sudo ln -s ssh/config ~/.ssh/config
fi

# .gitconfig
if [ -f "git/.gitconfig" ]; then
    msg_installing "~/.gitconfig"
    sudo ln -s git/.gitconfig ~/.gitconfig
fi

# .editorconfig
if [ -f ".editorconfig" ]; then
    msg_installing "~/.editorconfig"
    sudo ln -s init/.editorconfig ~/.editorconfig
fi

# .gitignore
if [ -f "git/.gitignore_global" ]; then
    msg_installing "~/.gitignore_global"
    sudo ln -s git/.gitignore ~/.gitignore
    git config --global core.excludesfile ~/.gitignore
fi

# .profile
if [ -f ".bash_profile" ]; then
    msg_installing ".bash_profile"
    sudo ln -s bash/.bash_profile ~/.bash_profile
    source ~/.bash_profile
    msg_alert "For use on this session, type: source ~/.bash_profile"
fi