# My vim configuration

To install run the `install.sh` script included in the repo:

```bash
# Download vim-plug & creare appropriate folders
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Open vim, run :PlugInstall and quit
vim +PlugInstall +qall

# Go to the YouCompleteMe folder
cd ~/.vim/plugged/YouCompleteMe/ 

# Execute the YouCompleteMe install script
./install.py --clang-completer --gocode-completer --tern-completer

```
