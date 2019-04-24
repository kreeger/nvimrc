set hidden  " Vim's windowing is basically unusable without hidden.
let mapleader=";"  " Redefine the leader.

" vim-plug
"
call plug#begin('~/.config/nvim/plugged')
Plug 'fatih/vim-go'
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

" Settings
"
colorscheme Tomorrow-Night
set background=dark  " Set some visual options, with dark background
set number  " Line numbers in the gutter
set showcmd  " Show partial command in the status line.
set colorcolumn=80  " Add a column guide at line 80
set nowrap  " Set some whitespace options, including nowrap
set tabstop=4  " Tabstops are every X spaces.
set shiftwidth=4  " Same for auto-indents.
set softtabstop=4  " Same for number of spaces when <tab> is hit.
set expandtab  " Tab makes spaces.
set hlsearch  " Highlight search results.
set incsearch  " Search-as-you-type.
set ignorecase  " Ignore case of search string/results.
set smartcase  " Consider case when ALL CAPS.
set wildmode=list:longest,list:full  " Set tab completion mode.
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*,*node_modules/*
set backupdir=~/.config/nvim/backup  " Use this directory for backup files.
set directory=~/.config/nvim/backup  " Use this directory for swap files.
set clipboard=unnamed  " macOS clipboard compatibility.

" Trim trailing whitespace on save
"
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Filetype mappings
"
autocmd BufRead,BufNewFile *.swift set ft=swift
autocmd BufRead,BufNewFile {Podfile,Gemfile,Rakefile,Thorfile,Vagrantfile,config.ru,*.rabl,*.podspec,Podfile} set ft=ruby
autocmd BufRead,BufNewFile *.{jsonify,builder,rabl} set ft=ruby
autocmd BufRead,BufNewFile *.json set ft=javascript
autocmd BufRead,BufNewFile *.{sass,scss} set ft=sass
autocmd BufRead,BufNewFile *.{go} set ft=go

" Ctrl-C pops out of insert mode.
"
cnoremap <C-c> <Esc>

" Ctrl-P invocation with ;; or ,
"
nmap <Leader><Leader> :CtrlPBuffer<CR>
map , :CtrlP<CR>

" Leader-based quick-actions
"
map <Leader>v :vs<CR>
map <Leader>h :split<CR>

" Split jumps keybindings
"
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>

" Function key mappings
"
map <F4> :nohl<CR>

" Plugin options
"
let g:airline_powerline_fonts = 1
