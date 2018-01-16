set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"Turn on you complete me
Bundle 'Valloric/YouCompleteMe'
"Colour scheme
Plugin 'jnurmine/Zenburn'
"Nerd tree - to see what it's like
Plugin 'scrooloose/nerdtree'
"Quick search 
Plugin 'kien/ctrlp.vim'
Plugin 'w0rp/ale'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-airline/vim-airline'
Plugin 'easymotion/vim-easymotion'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'ElmCast/elm-vim'              
" Add all you r plugins here (note older versions of Vundle used Bundle instead of Plugin)
              
              
" All of your  Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme desert
set splitbelow
set splitright
set colorcolumn=80
set nu
set smartcase
set hlsearch
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap W 10w
nnoremap B 10b
autocmd BufNewFile,BufRead *.py;
    \ set tabstop=4 |
    \ softtabstop=4 |
    \ shiftwidth=4 |
    \ textwidth=79 |
    \ expandtab |
    \ autoindent |
    \ fileformat=unix

autocmd Filetype javascript setl ts=2 sts=2 sw=2 expandtab autoindent
autocmd BufNewFile,BufRead *.elm setl ts=2 sts=2 sw=2 expandtab autoindent

autocmd Filetype php setl ts=4 sts=4 sw=4 expandtab autoindent

let g:ackprg = 'ag --vimgrep'

let g:ctrlp_custom_ignore ={
			\'dir': '\v[\/](test_fixtures|node_modules)$',
			\'file': '\v\.pyc$',
			\}
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
map <C-n> :NERDTreeToggle<CR>
map <M-m> :NERDTreeFind<CR>
"set the encoding
set encoding=utf-8

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"Turn on highlighting
let python_highlight_all=1
syntax on
"  ALE
"  "
let g:ale_linters = {
\  'python': ['pylint'],
\  'javascript': ['eslint'],
\  'php': ['phpcs']
\}
let g:ale_python_pylint_options = '--load-plugins pylint_django'

