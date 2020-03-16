call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lifepillar/vim-solarized8'
Plug 'w0rp/ale'
Plug 'tell-k/vim-autopep8'
Plug 'majutsushi/tagbar'
Plug 'davidhalter/jedi-vim'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'ervandew/supertab'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim' , { 'on': 'CtrlP' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } 
call plug#end()

" Stylling
set background=dark
colorscheme solarized8
let g:one_allow_italics = 1

" General
nnoremap <C-n> :NERDTreeToggle<cr>
nnoremap <M-r> :NERDTreeRefreshRoot<cr>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <Leader>t :TagbarToggle<cr>

set smartcase
set nu
set hlsearch

" Python
autocmd Filetype python setl ts=4 sw=4 expandtab autoindent fileformat=unix colorcolumn=81
let g:autopep8_on_save = 1
let g:autopep8_disable_show_diff = 1
let g:jedi#completions_enabled = 0


" Yaml
autocmd BufNewFile,BufRead *.yml,*.yaml setl ts=2 sts=2 sw=2 expandtab 

" Javascript
autocmd Filetype javascript setl ts=2 sts=2 sw=2 expandtab autoindent

" Searching
nnoremap <C-p> :CtrlP<cr>

if executable('ag')
	set grepprg=ag\ --nogroup\ --nocolor
	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
	let g:ctrlp_use_caching = 0
endif
" Linting

let g:ale_linters = {
\	'python': ['flake8'],
\	'javascript': ['eslint'],
\}


"Use neovim python-venv
let g:python3_host_prog = '/home/apw/.vim/nvim-venv/bin/python'
let g:deoplete#sources#jedi#python_path = '/home/apw/.vim/nvim-venv/bin/python'
let g:deoplete#enable_at_startup = 1
let g:SuperTabDefaultCompletionType = "<c-n>"
