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

set guifont=DejaVu\ Sans\ Mono\ for\ Powerline

" Set autoread when file is changed from the outside
set autoread

" :W sudo save
command W w !sudo tee % > /dev/null

set showcmd       " Shows incomplete command
set wildmenu      " Set command-line completion
" Where Vim looks for completions is controlled by the complete setting.
" The default is .,w,b,u,t,i, which means Vim will look in:
" 
" . The current buffer.
" w Buffers in other windows.
" b Other loaded buffers.
" u Unloaded buffers.
" t Tags.
" i Included files.

set complete=.,w,b,u,i


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
" set clipboard=unnamed
set clipboard=unnamedplus
" =================================================
" Colors and Theme
" =================================================
set background=dark
colorscheme PaperColor
" colorscheme gruvbox
" let g:gruvbox_contrast_dark='hard'

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

nmap <leader>fed G=gg

imap jj <Esc>
inoremap <C-c> <Esc>

nnoremap Q <nop>

nnoremap <Leader>rr :set relativenumber<CR>
nnoremap <Leader>rn :set norelativenumber<CR>

cnoremap <C-k> <Up>
cnoremap <C-j> <Down>
cnoremap <C-h> <Left>
cnoremap <C-l> <Right>
cnoremap <C-b> <S-Left>
cnoremap <C-w> <S-Right>
