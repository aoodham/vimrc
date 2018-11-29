# vimrc


1. Install Vundle
	`git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
2. Copy vimrc to `~/.vimrc`
3. run `:PluginInstall`
4. (optional) install the silver-searcher
5. (optional) install ctags


## Things that are good:

1. crtl+v/+s -> this is normal vim behaviour buts in a vertical/ horizontal window split
2. ctl+h/j/k/l move between windows as those keys dictate
3. crtl+p -> use silver searcher (if installed) to regex search filenames 
4. ctrl+n -> NerdTree window of files (r to refresh!)
5. having made a tags file (ctags -R <dirname>) you can then do `:tag <object to search for>` or ctrl+] on a method to jump to the definition (this is normal vim)
6. If you compile vim with clipboard support you can copy to/from the global pastebin with `"+` e.g `"+p` -> paste from global pastebin
