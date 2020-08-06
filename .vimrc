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
Plug 'jiangmiao/auto-pairs'

call plug#end()
"My ConFigs
set nocompatible
"set relativenumber
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
let g:airline_theme='powerlineish'
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
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
"Emmet lenguages
let g:user_emmet_settings={
                        \'javascript':{
                        \'extends':'html',
                        \'filters':'c'
                        \}
 \}

