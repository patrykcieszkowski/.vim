Installation:

    git clone git://github.com/patrykcieszkowski/.vim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc

Install plugins

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update
