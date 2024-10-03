" -----------------------------------------------------------------------------
"  GLOBALS
" -----------------------------------------------------------------------------
let g:netrw_altv = 1
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_keepdir = 0

" -----------------------------------------------------------------------------
"  OPTIONS
" -----------------------------------------------------------------------------

" General Settings
"
" Disable Vi compatibility mode for better Vim features
set nocompatible
" Use the system clipboard for all yank, delete, change, and put operations
set clipboard=unnamedplus
" Disable all bells and beeps
set belloff=all
" Enable 24-bit RGB color in the TUI
set termguicolors
" Disable wrapping text
set nowrap


" File Type and Syntax
"
" Enable file type detection
filetype on
" Enable file type-specific plugins
filetype plugin on
" Enable file type-specific indentation
filetype indent on
" Enable syntax highlighting
syntax on
" Set Omnifunc Autocomplete based on filetype
set omnifunc=syntaxcomplete#Complete


" Display Settings
"
" Show line numbers
set number       
" Show relative line numbers
set relativenumber
" Always display the status line
set laststatus=2
" Show (partial) command in the last line of the screen
set showcmd
" Show the current mode in the status line
set showmode              
" Customize the status line
set statusline=\ \ %F\ \|\ \ %n\ %=%Y\ \|\ \ %{&ff}\ \|\ \ %l,%v\ \ 


" Search Settings
"
" Ignore case in search patterns
set ignorecase
" Show search matches as you type
set incsearch
" Highlight search matches
set hlsearch
" Override 'ignorecase' if the search pattern contains uppercase letters
set smartcase


" Indentation and Tabs
"
" Convert tabs to spaces
set expandtab
" Number of spaces to use for each step of (auto)indent
set shiftwidth=2
" Number of spaces that a <Tab> in the file counts for
set tabstop=2


" Splits and Windows
"
" Open vertical splits to the right
set splitright
" Open horizontal splits below
set splitbelow


" Path and Shell
"
" Search for files in subdirectories
set path+=**
" Use PowerShell as the default shell on Windows
if has("win32") || has("win64")
  set clipboard=unnamed
  set shell=pwsh
endif


" Allow backspacing over everything in insert mode
set backspace=3

" Enable command-line completion mode
set wildmenu


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
" Remove highlighting
nnoremap <Esc> :nohlsearch<CR>
" Move line up
nnoremap <silent> <A-k> :m .-2<CR>== 
" Move line down
nnoremap <silent> <A-j> :m .+1<CR>== 
" Open Terminal
nnoremap <silent> <leader>`b :term++rows=10<CR>
nnoremap <silent> <leader>`t :tab ter<CR>
" Change Themes
nnoremap <leader>tl :so $MYVIMDIR/catppuccin_latte.vim<CR>
nnoremap <leader>td :so $MYVIMDIR/catppuccin_mocha.vim<CR>

" Visual Mode
"
" Move selected lines up
vnoremap <silent> <A-k> :m '<-2<CR>gv=gv
" Move selected lines down
vnoremap <silent> <A-j> :m '>+1<CR>gv=gv

" Help Pages
"
" Completion keymaps
nnoremap <leader>hc :h ins-completion<CR>
" Netrw keymaps
nnoremap <leader>hn :h netrw-browse-map<CR>


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

" -----------------------------------------------------------------------------
"  USER INTERFACE
" -----------------------------------------------------------------------------
set textwidth=120
so $MYVIMDIR/catppuccin_mocha.vim

