call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'neomake/neomake'
Plug 'tmhedberg/SimpylFold'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Chiel92/vim-autoformat'
Plug 'mhinz/vim-startify'
Plug 'morhetz/gruvbox'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
""" Added from other source
Plug 'Yggdroot/indentLine'
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'arakashic/chromatica.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree' " side directory viewer
Plug 'ryanoasis/vim-devicons'
call plug#end()




" Config by saurabh
"devicons
set encoding=UTF-8
"
let g:chromatica#enable_at_startup=1
let g:cpp_experimental_template_highlight=1
let g:chromatica#libclang_path='/usr/lib64'
""" NErdtree
autocmd VimEnter * NERDTree | wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeWinSize=25
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = '' 
let NERDTreeStatusline="%{matchstr(getline('.'), '\\s\\zs\\w\\(.*\\)')}"
"" INdentline config
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
"let g:indentLine_bgcolor_term = 202
"let g:indentLine_bgcolor_gui = '#FF5F00'
""Theme consistent over vim
syntax on
colorscheme gruvbox
let g:airline_theme='gruvbox'
"Set relative and absolute line no.
set nu rnu
"" Airline config
" Example keybindings
nn <silent> <M-d> :ALEGoToDefinition<cr>
nn <silent> <M-r> :ALEFindReferences<cr>
nn <silent> <M-a> :ALESymbolSearch<cr>
nn <silent> <M-h> :ALEHover<cr>
" set guifont=NotoMono\ Nerd\ Font\ 12
let g:loaded_python_provider = 0
let g:airline_powerline_fonts = 1
" testing rounded separators (extra-powerline-symbols):
"let g:airline_left_sep = "🚓"
set conceallevel=0
set concealcursor=""
au BufRead *.tex let g:indentLine_setConceal = 0
" Persistent undo
set undofile
set swapfile
set dir=~/.vim/swap/
set backup
set backupdir=~/.vim/swap/
set backupskip=~/.vim/swap/*
set directory=~/.vim/swap/
set writebackup
"Add persistence undo
set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo
"Add templete files
set textwidth=0  " lines longer than 79 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line
set wrapmargin=0
set mouse= mousemodel=popup
" Airline
let g:airline_left_sep ="\ue0b4"
let g:airline_right_sep = "\ue0b6"
" set the CN (column number) symbol:
let g:airline_section_a = airline#section#create(['📂','mode'])
let g:airline_section_b = airline#section#create(['%F'])
let g:airline_section_c = airline#section#create([''])
let g:airline_section_x = airline#section#create([''])
let g:airline_section_y = airline#section#create(['⏬','%3p%%','⏫'])
let g:airline_section_z = airline#section#create(["↕️ " . '%{line(".")}' . "↔️ " . '%{col(".")}'])
let g:airline#extensions#ale#error_symbol = '🔥'
let g:airline#extensions#ale#warning_symbol = '⚠️ '
let g:ale_sign_error = '🔥'
let g:ale_sign_warning = '⚠️ '
let g:ale_echo_msg_error_str="🔥"
let g:ale_echo_msg_warning_str="⚠️ "
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

highlight clear ALEErrorSign
highlight clear ALEWarningSign
"Autocomplete
let g:deoplete#enable_at_startup = 1
" Ale  {{{2
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:ale_fix_on_save = 1
let g:ale_open_list = 0
let g:ale_list_window_size = 5
let g:ale_set_quickfix  = 1
let g:ale_set_loclist = 0
let g:ale_lint_delay = 1
let g:ale_lint_on_text_changed ='always'
let g:ale_linters = {'c': ['ccls', 'clang', 'clangcheck', 'clangd', 'clangtidy', 'clazy', 'cppcheck', 'cpplint', 'cquery', 'flawfinder', 'gcc'], 'cpp': ['ccls', 'clang', 'clangcheck', 'clangd', 'clangtidy', 'clazy', 'cppcheck', 'cpplint', 'cquery', 'flawfinder', 'gcc'], 'python': ['black','pylint'], 'text':['alex', 'languagetool', 'proselint', 'redpen', 'textlint', 'vale', 'writegood']}
let g:ale_fixers = {'cpp': ['clangtidy','clang-format', 'uncrustify'], 'python': ['black','autopep8','isort','reorder-python-imports','yapf'], 'latex':['latexindent','textlint']}
let g:ale_cpp_gcc_options="-Wall  -std=c++1z -fopenmp -lhdf5 -lhdf5_cpp  "
let g:ale_c_gcc_options="-Wall  -std=c++1z -fopenmp -lhdf5 -lhdf5_cpp "
let g:ale_cpp_clang_options="-Wall -std=c++1z -fopenmp -I/usr/include/hdf5/serial -L/usr/lib/x86_64-linux-gnu/hdf5/serial "
let g:ale_c_clang_options="-Wall -std=c++1z -fopenmp -I/usr/include/hdf5/serial -L/usr/lib/x86_64-linux-gnu/hdf5/serial "
"set statusline=%{LinterStatus()}

" undo Stuff
set wrap linebreak nolist
" Startify
let g:startify_files_number = 100
"Latex
set conceallevel=0
set concealcursor=""
au BufWrite *.tex set conceallevel=0
au BufWrite *.tex set concealcursor=""
"Autoformat : automatically format the file when saving
"au BufWrite * :Autoformat

