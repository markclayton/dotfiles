" Vundle 
set nocompatible           
filetype off                

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'

call vundle#end()            

" Basic Settings
syntax on	" syntax highlighting
set shell=/bin/zsh
set autoindent
filetype plugin indent on    " detect file types 
set showmatch
set history=1000
set spell	" spell check
set nu	" line numbers on
set incsearch	" find as you type search
set hlsearch	" highlight search terms
set ignorecase smartcase	" case insensitive search
set wildmode:list:longest,full	" command <Tab> completion
" set cursorline	" highlight current line
set cmdheight=1
set switchbuf=useopen
set showtabline=2
set winwidth=79
set showcmd	" display incomplete commands
set autoread	" if file changes outside of vim, auto-reload
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J> " remap split screens to vim nav
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set foldmethod=indent " code folding
set foldlevel=99
nnoremap <space> za " enable folding with the spacebar
set encoding=utf-8
let python_highlight_all=1

" Aesthetics
colorscheme solarized
set background=dark
" call togglebg#map("<F5>")
" :set t_Co=256 " 256 colors

" Do not make backups at all
set nobackup
set nowritebackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp


" Powerline
set rtp+=~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
set laststatus=2

"Flag Unnecessary Whitespace
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" PEP8 indentation 
"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix

"au BufNewFile,BufRead *.js, *.html, *.css
"    \ set tabstop=2
"    \ set softtabstop=2
"    \ set shiftwidth=2

" YouCompleteMe additional customization
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
