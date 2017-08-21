"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=500
set nu
execute pathogen#infect()
" Enable filetype plugins
filetype plugin on
filetype indent on


set encoding=utf-8

set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
 map <space> /
 map <c-space> ?
"
" " Disable highlight when <leader><cr> is pressed
 map <silent> <leader><cr> :noh<cr>
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" personal map
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

:map <C-n> <ESC>:NERDTreeToggle<RETURN>
set pastetoggle=<F8>
set laststatus=2
let g:airline_theme='dark'
set t_Co=256
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" " Smart way to move between windows
:map <Tab> <ESC>:tabn<RETURN>
:map <S-Tab> <ESC>:tabprevious<RETURN>
" "Para cambiar el color de fondo cuando muetro la pantalla a través del
" proyector
:map <c-L> <ESC>:colorscheme shine<RETURN>
:map <c-O> <ESC>:colorscheme mine<RETURN>


"" Resaltado de sibtaxis en la búsqueda
:set hls
nnoremap <F3> :set hlsearch!<CR>

colorscheme mine

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"fuentes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" personal map
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" personal map
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" unicode symbols
 let g:airline_left_sep = '»'
 let g:airline_left_sep = '▶'
 let g:airline_right_sep = '«'
 let g:airline_right_sep = '◀'

 " airline symbols
 let g:airline_left_sep = ''
 let g:airline_left_alt_sep = ''
 let g:airline_right_sep = ''
 let g:airline_right_alt_sep = ''

