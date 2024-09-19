# Download vim-plug & creare appropriate folders
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Open vim, run :PlugInstall and quit
vim +PlugInstall +qall

# Append or create ~/.vimrc file sourcing vimrc_custom
echo 'source ~/.vim/vimrc_custom' >> ~/.vimrc
