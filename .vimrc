"----------My vimrc 
"----------Saurabh Pradhan
syntax on
" Turn on line numbers:
set modeline
set number


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tabs 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set tabstop=4
"set shiftwidth=4

"set ai "Auto indent
"set si "Smart indet
"set wrap "Wrap lines

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the curors - when moving vertical..
set so=7

set wildmenu "Turn on WiLd menu

set ruler "Always show current position

set cmdheight=2 "The commandbar height

set hid "Change buffer - without saving

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase "Ignore case when searching
set smartcase

set hlsearch "Highlight search things

set incsearch "Make search act like search in modern browsers
set nolazyredraw "Don't redraw while executing macros 

set magic "Set magic on, for regular expressions

set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500




 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""





" Toggle line numbers and fold column for easy copying:
nnoremap <F3> :set nonumber!<CR>:set foldcolumn=0<CR>
"filetype plugin indent on
"autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
set pastetoggle=<F2>
set laststatus=2

" Format the statusline
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
set statusline=\ %{HasPaste()}%f%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c


function! CurDir()
    let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
    return curdir
endfunction 

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    else
        return ''
    endif
endfunction 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable "Enable syntax hl

" Set font according to system

if has("gui_running")
  set guioptions-=T
  set t_Co=256
  set background=dark
  colorscheme peaksea
  set nonu
else
  colorscheme zellner
  set background=dark

  set nonu
endif

set encoding=utf8
try
    lang en_US
catch
endtry

set ffs=unix,dos,mac "Default file types

""""""""""""""""""""""""""""""""""""""""""""""""PYTHON FILE""""""""
"""""""""""""""""""Restore cursor to file position in previous editing session"""""""""""""
set viminfo='10,\"100,:20,%,n~/.viminfo

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

set spell "checking spell

