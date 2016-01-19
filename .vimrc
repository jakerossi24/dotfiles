set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'luochen1990/rainbow'
Plugin 'vim-scripts/Align'
Plugin 'austintaylor/vim-indentobject'
Plugin 'pangloss/vim-javascript'
Plugin 'burnettk/vim-angular'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/DeleteTrailingWhitespace'

call vundle#end()
filetype plugin indent on

syntax enable
" colorscheme delek
colorscheme zellner

set t_Co=256
set number
set autoindent
set autoread
set backspace=2
set directory-=.
set encoding=utf-8
set expandtab
set incsearch
set ignorecase
set iskeyword+=-
set list
set listchars=tab:▸\ ,trail:·
set scrolloff=10
set shiftwidth=2
set showcmd
set smartcase
set softtabstop=2
set tabstop=2
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu
set wildmode=longest,list,full
set mouse=a
set whichwrap=<,>,h,l,[,]
set laststatus=2
set backupcopy=yes

let mapleader=','

" Nerdtree
nmap ,e :NERDTreeToggle<cr>

" Align tool
nmap ,l  :Align<space>

" rainbow parens
let g:rainbow_active=1

" Control P settings
nmap ,; :CtrlP<cr>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" tabs
nmap ,t :tabnew<cr>

" Change esc key
ino jj <esc>
nnoremap ,<space> :DeleteTrailingWhitespace<CR>:nohlsearch<cr>

set exrc
set secure
