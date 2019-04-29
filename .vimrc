set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlp.vim'
Plugin 'vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'wesQ3/vim-windowswap'
Plugin 'godlygeek/tabular'
Plugin 'Buffergator'
Plugin 'ShowTrailingWhitespace'
Plugin 'ryanoasis/vim-devicons'


" Color Schemes
Bundle 'altercation/vim-colors-solarized'
Plugin 'sjl/badwolf'
Plugin 'flazz/vim-colorschemes'

Bundle 'vim-ruby/vim-ruby'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "vadv/vim-chef"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:airline_powerline_fonts = 1
" let g:airline_theme='solarized'
" let g:airline_solarized_bg='dark'
let g:airline_theme='badwolf'

map <C-n> :NERDTreeToggle<CR>

set laststatus=2	"Display status line all the time

" Indentation settings
set expandtab       "Use softtabstop spaces instead of tab characters for indentation
set shiftwidth=2    "Indent by 2 spaces when using >>, <<, == etc.
set softtabstop=2   "Indent by 2 spaces when pressing <TAB>
set tabstop=2
set shiftwidth=2

" set autoindent      "Keep indentation from previous line
set smartindent     "Automatically inserts indentation in some cases
set cindent         "Like smartindent, but stricter and more customisable

" highlight current line
set cursorline
set cursorcolumn

set encoding=UTF-8
" hightlight column 80
set cc=80

if has ("autocmd")
  " File type detection. Indent based on filetype. Recommended.
  filetype plugin indent on
endif

" Multi-line cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-e>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
let g:multi_cursor_start_key='<F6>'

:set nu
":set guifont=Monaco
":set guifont=Monaco\ for\ Powerline\ 12
:set guifont=Hack\ Nerd\ Font\ 12

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

syntax enable
" set background=dark
" colorscheme solarized
colorscheme badwolf

autocmd FileType ruby,eruby set filetype=ruby.eruby.chef

set nofoldenable
