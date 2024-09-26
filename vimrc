" -----------------------------------------------------------------------------
"  GLOBALS
" -----------------------------------------------------------------------------
let g:netrw_banner = 0
let g:netrw_keepdir = 0

" -----------------------------------------------------------------------------
"  OPTIONS
" -----------------------------------------------------------------------------
set nocompatible " Disable compatibility with vi

filetype on " Enable type file detection.
filetype plugin on " Enable plugins and load plugin for the detected file type.
filetype indent on " Load an indent file for the detected file type.
syntax on " Turn syntax highlighting on.

set number " Show line numbers.
set relativenumber " Make Line numbers relative

set backspace=3 " Backspace weird behaviour
set belloff=all " Silence that annoying bell
set clipboard=unnamed " Set clipboard to use OS clipboard
set expandtab " Use space characters instead of tabs.
set ignorecase " Ignore case when searching.
set incsearch " Enable incremental search.
set hlsearch " Highlight matching search patterns.
set laststatus=2 " Show Last Status Line Always 
set path+=** " Allow ':find' to search through CWD
set shiftwidth=4 " Set shift width to 4 spaces.
set showcmd " Show partial command in the last line of the screen.
set showmode " Show the mode you are in on the last line.
set smartcase " Override ignorecase if search pattern contains uppercase letters.
set splitbelow " Ensure horizontal splits are below the current buffer
set tabstop=4 " Set tab width to 4 columns.
set termguicolors " Enable true gui colors
set wildmenu " Show tab completion menu in vim commandline

set statusline=\ \ %F\ \|\ \ %n\ %=%Y\ \|\ \ %{&ff}\ \|\ \ %l,%v\ \ 

" Enable powershell for inbuilt terminal
if has("win32") || has("win64")
    set shell=pwsh
endif

" -----------------------------------------------------------------------------
"  KEYBINDS
" -----------------------------------------------------------------------------
let mapleader = " "

" Normal Mode
"
" Save All
nnoremap <leader>w :wa<CR>
" Open Explorer
nnoremap <leader>e :e .<CR>
" Move line up
nnoremap <silent> <A-k> :m .-2<CR>== 
" Move line down
nnoremap <silent> <A-j> :m .+1<CR>== 
" Open Terminal
nnoremap <silent> <leader>t :term++rows=10<CR>

" Visual Mode
"
" Move selected lines up
vnoremap <silent> <A-k> :m '<-2<CR>gv=gv
" Move selected lines down
vnoremap <silent> <A-j> :m '>+1<CR>gv=gv


" -----------------------------------------------------------------------------
"  TAGS
" -----------------------------------------------------------------------------
" Tags: Jump to defintion++
"
" <C-]>  : Jump to tag under cursor
" g<C-]> : Ambiguous tags
" <C-t>  : Jump back up the tag stack
"
" Call ":MakeTags" inside repo
command! MakeTags !ctags -R .

