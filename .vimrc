"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=500

set encoding=utf-8
syntax on

" Some basics:
  set number relativenumber

" Colors
  colorscheme mine

  execute pathogen#infect()
" Enable filetype plugins
  filetype plugin on
  filetype indent on

""Colores del identado
set list
set listchars=tab:>·,trail:·
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=blue   ctermbg=234
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green  ctermbg=234

let g:jedi#completions_enabled = 0

" Things for LaTex
  let g:Tex_ViewRule_pdf = 'evince'
  set grepprg=grep\ -nH\ $*
  let g:tex_flavor='latex'
  let g:Tex_DefaultTargetFormat='pdf'
  let g:Tex_FormatDependency_pdf = 'dvi,pdf'
  let g:Tex_MultipleCompileFormats='pdf,dvi,pdf'
  let g:Tex_CompileRule_dvi = 'latex -shell-escape -interaction=nonstopmode -file-line-error $*.tex'
  let g:Tex_CompileRule_pdf = 'dvipdf $*.dvi tmplatexsuite.pdf; mv tmplatexsuite.pdf $*.pdf'
  " let g:Tex_CompileRule_pdf = 'pdflatex -shell-escape -file-line-error-style $*'
  " let g:Tex_CompileRule_dvi = 'dvipdf $*.dvi tmplatexsuite.pdf; mv tmplatexsuite.pdf $*.pdf'

" Set to auto read when a file is changed from the outside
  set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
  let mapleader = ","
  let g:mapleader = ","

" Fast saving
  nmap <leader>w :w<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
  set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set tabstop=2 softtabstop=0 expandtab shiftwidth=2
" set shiftwidth=4
" set tabstop=4
set noai

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
"NERD commenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add spaces after comment delimiters by default
  let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
  let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
  let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
  let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
  let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
  let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
  let g:NERDTrimTrailingWhitespace = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" personal map
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

  :map <C-n> <ESC>:NERDTreeToggle<RETURN>
  set pastetoggle=<F8>
  set laststatus=2

" Set 256 color mode
  set t_Co=256

" Airline config
  let g:airline_theme='dark'
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 1

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif


"" Smart way to move between windows
  :map <Tab> <ESC>:tabn<RETURN>
  :map <S-Tab> <ESC>:tabprevious<RETURN>

""Para cambiar el color de fondo cuando muetro la pantalla a través del
" proyector
  :map <c-K> <ESC>:IndentGuidesToggle<RETURN>
  :map <c-L> <ESC>:colorscheme shine<RETURN>
  :map <c-O> <ESC>:colorscheme mine<RETURN>
  :map <F4> <ESC>:TagbarToggle<RETURN>


"" Resaltado de sintaxis en la búsqueda
  :set hls
  nnoremap <F3> :set hlsearch!<RETURN>
  nnoremap <F6> :set list!<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"fuentes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
