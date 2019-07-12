Installing Vim Configuration Files
==================================
```
cd ~/Library
git clone git@github.com:nkraft/vim.git
cd vim
ln -s $(pwd)/gvimrc ~/.gvimrc
ln -s $(pwd)/vimrc ~/.vimrc
ln -s $(pwd)/runtime ~/.vim
git submodule init
git submodule update
```

Adding Vim Modules
==================
```
cd ~/Library/vim
git submodule add <remote> runtime/bundle/<module-name>
```

Updating Git Submodules
=======================
```
cd ~/Library/vim
git submodule foreach git pull
```
