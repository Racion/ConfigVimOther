"Plugins Vim-Plug
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/powerline'

call plug#end()
"My ConFigs
set nocompatible
set relativenumber
set nu
set tabstop=4 softtabstop=4
set expandtab
set showcmd
set smartindent
set wildmenu
set lazyredraw
set incsearch
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
nnoremap j gj
nnoremap k gk
nnoremap B 0
nnoremap E $
inoremap jk <esc>
set path+=**
"Themes and Others
colorscheme gruvbox
set bg=dark
let g:airline_theme='deus'
"Vim navigation 
let mapleader=" "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
"NerdTree
map <silent> <F2> :NERDTreeToggle<CR>
let g:NERDTreeGitStatusWithFlags=1
let g:NERDTreeIgnore=['^node_modules$']
let g:WebDevIconUnicodeDecorateFolderNodes=1
let g:NERDTreeGitStatusNodeColorization=1
set signcolumn=yes
"Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
"COC Autocomplete
