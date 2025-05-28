"  SYNTAX & EDITING ----------------------------------------------------------

set nocompatible   " disable compatability with vi
syntax on          " enable syntax highlighting
set cursorline     " highlight cursor line
set number         " set line number
set relativenumber " set realtive line numbers
set tabstop=4      " set tab width as 4 spaces
set expandtab      " use spaces instead of tabs
set nowrap         " do not wrap lines
set colorcolumn=80 " highlight column 80

set incsearch  " highlight matching characters while typeing (inc search)
set ignorecase " ignore capital letters during search
set smartcase  " override ignorecase option if searching for capital letters
set showmatch  " show matching words during a search
set hlsearch   " use highlighting when doing a search

set showcmd      " show partial command when typing in the last line of the screen
set showmode     " show mode on last line
set history=1000 " set command history to 1000 (default is 20)
set scrolloff=10 " always leave 10 rows before when scrolling

filetype on        " enable type file deteciton
filetype indent on " load an indent file for the detected file type
filetype plugin on " enable plugins & load plugin for detected file type

set wildmenu              " enable auto completion menu after pressing TAB
set wildmode=list:longest " make wildmenu behave similar to Bash completion
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx



" PLUGINS --------------------------------------------------------------------



" MAPPINGS -------------------------------------------------------------------
" nnoremap (normal mode)
" inoremap (insert mode)
" vnoremap (visual mode)

" ensure space has not been mapped & map leader to space
nnoremap <space> <Nop>
let mapleader=" "

" center the cursor vertically when searching
nnoremap n nzz
nnoremap N Nzz
" view netrw with leader pv
nnoremap <leader>pv :Ex<CR>
" keep cursor in original position when using J
nnoremap J mzJ`z
" keep cursor vertically center when page scrolling
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
" search term is shown in the center vertically
nnoremap n nzzz
nnoremap N Nzzz
" double press space to type :
nnoremap <leader><space> :

" double press j to escape
inoremap jj <esc>

" move highlighted text & auto indent
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
" yank into system clipboard when in visual mode
vnoremap <leader>y "+y



" VIM SCRIPT" ----------------------------------------------------------------



" STATUS LINE ----------------------------------------------------------------

set laststatus=2 " always show status line

set statusline+=%F%m%r%h%w%=\ [%Y] " full file path & if changes are made
set statusline+=[%{&ff}]           " file system
set statusline+=[%04l,%04v]        " current line & row
set statusline+=[%p%%]             " cursor file percentage
set statusline+=[%L]               " total file lines



" COLOR SCHEME ---------------------------------------------------------------



