" ==============
" | Vim config |
" ==============

set rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim/

" =================================================
" Configure directories
" =================================================
set nobackup
set nowb
set noswapfile

" =================================================
" General
" =================================================
set history=500

" Set autoread when file is changed from the outside
set autoread

" :W sudo save
command W w !sudo tee % > /dev/null

set showcmd       " Shows incomplete command
set wildmenu      " Set command-line completion

set cursorline    " Highlight current line
set laststatus=2  " Always show statusline
set t_Co=256      " 256 colors support

syntax enable
set nostartofline
set ttyfast
set ignorecase    " Ignore case when search

set hlsearch
set mouse=a
set number
set numberwidth=3

nnoremap <cr> :noh<cr><cr>

set wildignore+=*/tmp/*,*.o,*.swp,*.zip
set wildignore+=_build/*,*.beam

set timeoutlen=1000
set ttimeoutlen=0
set modeline
" =================================================
" Colors and Theme
" =================================================
set background=dark
colorscheme badwolf

" =================================================
" Text, tab and indent related
" =================================================
" Use spaces insted of tabs
set expandtab
set smarttab

" 1 tab = 2 spaces
set shiftwidth=2
set softtabstop=2
set tabstop=2

set list
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<


" =================================================
" Movement, windows, tabs, etc
" =================================================

" Leader
:let mapleader = ","

" Tabs management
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>
map <leader>te :tabedit<c-r>=expand("%:p:h")<cr>/

" Windows resizing
nnoremap <Left> :vertical resize +1<cr>
nnoremap <Right> :vertical resize -1<cr>
nnoremap <Up> :resize +1<cr>
nnoremap <Down> :resize -1<cr>

nmap <leader>fed ggVG=

imap jj <Esc>
inoremap <C-c> <Esc>

command! -nargs=* AC execute 'silent !carlitos ac <args>' | execute 'redraw!'

map <leader>ACo :AC<cr>
map <leader>ACc :AC -m cool -t 25<cr>
map <leader>ACh :AC -m heat -t 28<cr>
map <leader>ACf :AC -m fan -f 3<cr>
