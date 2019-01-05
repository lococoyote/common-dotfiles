" Make Vim more useful
"set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
" Set color scheme!¬
"colorscheme distinguished
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=","
" Don’t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&amp;undodir")
	set undodir=~/.vim/undo
endif

set viminfo+=! " make sure vim history works
map &lt;C-J&gt; &lt;C-W&gt;j&lt;C-W&gt;_ " open and maximize the split below
map &lt;C-K&gt; &lt;C-W&gt;k&lt;C-W&gt;_ " open and maximize the split above
set wmh=0 " reduces splits to a single line 

" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline
" Make tabs as wide as two spaces
set tabstop=2
" Enable line numbers
set number
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Respect modeline in files
set modeline
set modelines=4
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd

" Start scrolling three lines before the horizontal window border
set scrolloff=3

set spelllang=en
set spell


" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap &lt;leader&gt;ss :call StripWhitespace()&lt;CR&gt;
" Save a file as root (,W)
noremap &lt;leader&gt;W :w !sudo tee % &gt; /dev/null&lt;CR&gt;

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
endif


if empty(glob('~/.vim/autoload/plug.vim'))
				  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
					    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
					  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
		endif


" Setting up Vundle - the vim plugin bundler
    let iCanHazVundle=1
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme) 
        echo "Installing Vundle.."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/vundle
        let iCanHazVundle=0
    endif
    set nocompatible              " be iMproved, required
    filetype off                  " required
    set rtp+=~/.vim/bundle/vundle/
    call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    "Add your bundles here
    Plugin 'Syntastic' "uber awesome syntax and errors highlighter
    Plugin 'altercation/vim-colors-solarized' "T-H-E colorscheme
    Plugin 'https://github.com/tpope/vim-fugitive' "So awesome, it should be illegal 
    "...All your other bundles...
    if iCanHazVundle == 0
        echo "Installing Vundles, please ignore key map error messages"
        echo ""
        :PluginInstall
    endif

    call vundle#end() 
    "must be last
    filetype plugin indent on " load filetype plugins/indent settings
    colorscheme solarized
    syntax on                      " enable syntax
 
" Setting up Vundle - the vim plugin bundler end



" plugin section

" call plug#begin()



