## Dotfiles Setup

- Clone dotfiles to `~/`

- Install Vundle using:
 
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

- Run vim and `:PluginInstall`

```
sudo apt install build-essential cmake python3-dev
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clang-completer
```

- Source bashrc using `source ~/.bashrc`

- For Go support, run `:GoInstallBinaries`
