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
Plugin 'vim-airline/vim-airline-themes'
Plugin 'easymotion/vim-easymotion'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'ElmCast/elm-vim'              
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'flazz/vim-colorschemes'
" Add all you r plugins here (note older versions of Vundle used Bundle instead of Plugin)
              
              
" All of your  Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme slate
set splitbelow
set splitright
set nu
set smartcase
set hlsearch
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"hi StatusLine ctermfg=239 guifg=#ffffff ctermbg=15 guibg=#4e4e4e cterm=bold gui=bold

autocmd Filetype javascript setl ts=2 sts=2 sw=2 expandtab autoindent
autocmd BufNewFile,BufRead *.elm setl ts=2 sts=2 sw=2 expandtab autoindent
autocmd Filetype python setl ts=4 sw=4 expandtab autoindent fileformat=unix colorcolumn=101
autocmd Filetype php setl ts=4 sts=4 sw=4 expandtab autoindent colorcolumn=100
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd BufNewFile,BufRead *.yml setl ts=2 sts=2 sw=2 expandtab 
autocmd FileType go setl ts=8 sw=8 sts=8 expandtab autoindent colorcolumn=100
autocmd BufNewFile,BufRead Jenkinsfile setl ts=2 sts=2 sw=2 expandtab filetype=groovy
autocmd FileType yaml setl ts=2 sw=2 sts=2 expandtab	
augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END

let g:ctrlp_custom_ignore ={
			\'dir': '\v[\/](site-packages|prod|env|test_fixtures|node_modules|vendor)$',
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
let g:airline_theme='biogoo'
let g:ycm_autoclose_preview_window_after_completion=1
autocmd Filetype python map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:phpcomplete_mappings = {
			\ 'jump_to_def': ',g',
			\}
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

let g:ale_php_phpcs_use_global = 1
let g:ackprg = 'ag --vimgrep'
