" .vimrc
"

filetype indent on
filetype plugin on
set ofu=syntaxcomplete#Complete

set background=dark
syntax on

set encoding=utf-8

set modeline
set modelines=5

set number
set backspace=2

set grepprg=grep\ -nH\ $*
set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

set autoread

set so=7

" Line breaks
set textwidth=74
set formatoptions=t1


" WP mode
func! WordProcessorMode()
    map j gj
    map k gk
    setlocal spell spelllang=en_us
    setlocal noexpandtab
    set complete+=s
    setlocal wrap
    setlocal linebreak
    augroup PROSE
        autocmd InsertEnter * set formatoptions+=a
        autocmd InsertLeave * set formatoptions-=a
    augroup END
endfu
com! WP call WordProcessorMode()

noremap Q gqap

" Searching
set ignorecase
set smartcase
set hlsearch

" Tabs & indent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set expandtab


" Look & feel
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif
if &term=~'linux'
    colorscheme default
else
    colorscheme molokai
endif

set ruler
set showmode
set showcmd

set cmdheight=1
set laststatus=2
set statusline=%{&ff}\ \%{&fenc}\ \b%1.3n\ \%#StatusFTP#\%Y\ \%#StatusRO#\%R\ \%#StatusHLP#\%H\ \%#StatusPRV#\%W\ \%#StatusModFlag#\%M\ \%#StatusLine#\%f\%=\%1.7c\ \%1.7l/%L\ \%p%%


" Latex-specific config
set grepprg=grep\ -nH\ $*
let g:tex_flavor = 'latex'
let g:Tex_SmartKeyQuote = 0
set iskeyword+=:
