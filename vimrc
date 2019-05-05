" Maintainer:   William Brafford <williamrandolphbrafford@gmail.com>
" Last change:  2019 May 1

" Enable file type detection
filetype plugin indent on

" Enable syntax highlighting and highlight last used search
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" bash-style tab completion
set wildmode=longest,list

" For all text files set 'textwidth' to 78 characters
autocmd FileType text setlocal textwidth=78

autocmd FileType yaml setlocal tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" Also don't do it when the mark is in the first line
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

set ruler          " show the cursor position all the time
set showcmd        " display incomplete commands
set incsearch      " do incremental searching

" Use familiar tab settings by default.
set smartindent
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Line numbers by default with easy-clear mapping
set number
map \n :set nonumber<CR>
map \N :set number<CR>

" Easily clear search highlighting
map \c :nohlsearch<CR>

