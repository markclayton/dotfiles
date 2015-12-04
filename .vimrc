" Vundle 
set nocompatible           
filetype off                

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

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
set cursorline	" highlight current line
set cmdheight=1
set switchbuf=useopen
set showtabline=2
set winwidth=79
set showcmd	" display incomplete commands
set autoread	" if file changes outside of vim, auto-reload

" Aesthetics
colorscheme solarized
set background=dark
" call togglebg#map("<F5>")
:set t_Co=256 " 256 colors

" Do not make backups at all
set nobackup
set nowritebackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp


" Powerline
set rtp+=~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
set laststatus=2
