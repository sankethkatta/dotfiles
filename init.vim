" Helper function for conditionally loading plugins
function! Cond(cond, ...)
  let opts = get(a:000, 0, {})
  return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

" Plugins
call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'gurpreetatwal/vim-avro'
Plug 'junegunn/goyo.vim'              " creates padding around the window for focused writing
Plug 'junegunn/limelight.vim'         " highlights the current paragraph and dims all others
Plug 'rakr/vim-one'
Plug 'scrooloose/nerdtree'
Plug 'sjl/gundo.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-unimpaired'

"" Vim plugins
" Plug 'example', Cond(!has('nvim'))

"" CtrlP Settings
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

"" Neovim plugins
Plug 'w0rp/ale', Cond(has('nvim'))
call plug#end()

""" Ale auto-fix code settings
let g:ale_fix_on_save=1
let g:ale_fixers = {
\   'sass': ['prettier', 'remove_trailing_lines'],
\   'html': ['tidy', 'prettier', 'remove_trailing_lines'],
\   'javascript': ['prettier', 'eslint', 'remove_trailing_lines'],
\   'python': ['trim_whitespace', 'remove_trailing_lines'],
\   'terraform': ['terraform', 'trim_whitespace'],
\ }

let g:airline_theme='powerlineish'

" Colors
if (has("termguicolors"))
 set termguicolors                " enable 24 bit colors
endif
if !has('nvim')                   " needed to make 24 bit color work with vim
  set t_8b=[48;2;%lu;%lu;%lum
  set t_8f=[38;2;%lu;%lu;%lum
endif

set background=dark
colorscheme one

" NerdTree
let g:NERDTreeRespectWildIgnore=1   " respect wildignore option
set wildignore=__pycache__

" Vim settings
syntax enable
syntax on
filetype on
set number
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=2
set scrolloff=4
imap ii <Esc>
map s :w<CR>
map j gj
map k gk
imap WW <Esc>:w<CR>
imap AA <Esc>A
imap UU <Esc>ui
imap RR <Esc><C-r>i
set laststatus=2
set hlsearch
set mouse=a
set showcmd
set cursorline
set noswapfile
