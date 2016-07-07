# Download vim-plug & creare appropriate folders
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Open vim, run :PlugInstall and quit
vim +PlugInstall +qall

# Ensure cmake is installed for YCM
type cmake || brew install cmake

# Go to the YouCompleteMe folder
cd ~/.vim/plugged/YouCompleteMe/

# Execute the YouCompleteMe install script
./install.py --clang-completer --tern-completer

# Install tern (should use node installed with nvm)
cd ~ && npm install -g tern

# Append or create ~/.vimrc file sourcing vimrc_custom
echo 'source ~/.vim/vimrc_custom' >> ~/.vimrc
