call plug#begin('~/.vim/plugged')

Plug 'editorconfig/editorconfig-vim'
Plug 'elixir-editors/vim-elixir'
Plug 'janko-m/vim-test'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'wesQ3/vim-windowswap'
Plug 'mhinz/vim-mix-format'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'amadeus/vim-mjml'
Plug 'stephpy/vim-yaml'
Plug 'vim-syntastic/syntastic'
Plug 'mxw/vim-jsx'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vimwiki/vimwiki'
Plug 'nelsyeung/twig.vim'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'morhetz/gruvbox'
Plug 'majutsushi/tagbar'

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'NLKNguyen/papercolor-theme'
Plug 'tomasr/molokai'

Plug 'slashmili/alchemist.vim'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'ryanoasis/vim-devicons'

" Themes
Plug 'sonph/onehalf', {'rtp': 'vim/'}

" Plug 'Yggdroot/indentLine'
" Plug 'pangloss/vim-javascript'
Plug 'git@github.com:itchyny/calendar.vim.git'
" Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()
