" ====== "
" VUNDLE "
" ====== "
set nocompatible              " be iMproved, required
filetype off                  " required

let win_shell = (has('win32') || has('win64')) && &shellcmdflag =~ '/' " Cierto si estamos en windows
let vimDir = win_shell ? '$HOME/vimfiles' : '$HOME/.vim'
let &runtimepath .= ',' . expand(vimDir . '/bundle/Vundle.vim')
call vundle#rc(expand(vimDir . '/bundle'))

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" METE AQUÍ TUS PLUGINS:
"Plugin 'Valloric/YouCompleteMe'         " Autocompletado
Plugin 'nvie/vim-flake8'                " Validador de código Python
Plugin 'vim-airline/vim-airline'        " Línea de estado
Plugin 'vim-airline/vim-airline-themes' " Temas para la línea de estado
"Plugin 'powerline/powerline'            " Otra línea de estado. No funciona con esta versión de Vim
Plugin 'majutsushi/tagbar'              " Panel con los símbolos y funciones
"Plugin 'mhinz/vim-signify'             " Mostrar cambios para diversos SCM
Plugin 'airblade/vim-gitgutter'         " Mostrar cambios para GIT
Plugin 'jmcantrell/vim-virtualenv'      " Mostrar el virtualenv del fichero Python
Plugin 'tomtom/quickfixsigns_vim'       " Muestra en el gutter caracteres en las líneas con errores o warnings
Plugin 'scrooloose/syntastic'           " Chequeo de sintaxis
Plugin 'scrooloose/nerdtree'            " Nerdtree, navegador de ficheros en árbol
Plugin 'weynhamz/vim-plugin-minibufexpl' " Control de buffers
Plugin 'terminus'                       " Mejoras para la terminal de linux
Plugin 'scrooloose/nerdcommenter'       " Comentar y descomentar bloques de código
Plugin 'flazz/vim-colorschemes'         " Esquemas de color
Plugin 'edkolev/tmuxline.vim'           " Sincronización de colores con tmux powerline

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" ----------------------"
" CONFIGURACION PLUGINS "
" --------------------- "

" ········"
" Airline "
" ········"
let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
set laststatus=2
set encoding=utf-8


" ········ "
" Powerbar "
" ········ "
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup

" ······ "
" Tagbar "
" ······ "
nmap <F8> :TagbarToggle<CR>
let g:tagbar_iconchars = ['▸', '▾']
let g:tagbar_autofocus = 1

" ········· "
" Syntastic "
" ········· "
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Opciones para que chequee al arrancar. Ralentizan mucho la carga de ficheros
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" ········· "
" ctrlspace "
" ········· "
set nocompatible
set hidden


" ============== "
" CONFIG WINDOWS "
" ============== "

"set nocompatible
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

if win_shell
    set nocompatible
    source $VIMRUNTIME/vimrc_example.vim
    source $VIMRUNTIME/mswin.vim
    behave mswin

    set diffexpr=MyDiff()
    function MyDiff()
      let opt = '-a --binary '
      if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
      if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
      let arg1 = v:fname_in
      if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
      let arg2 = v:fname_new
      if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
      let arg3 = v:fname_out
      if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
      let eq = ''
      if $VIMRUNTIME =~ ' '
        if &sh =~ '\<cmd'
          let cmd = '""' . $VIMRUNTIME . '\diff"'
          let eq = '"'
        else
          let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
        endif
      else
        let cmd = $VIMRUNTIME . '\diff'
      endif
      silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
    endfunction

    " Si, Peter, cosas de Windows
    set enc=utf-8
    set fileencoding=utf-8
    set fileencodings=ucs-bom,utf8,prc,latin1
    "set guifont=Consolas:h10
    "set guifont=Fira\ Mono\ Medium\ for\ Powerline:h10
    set guifont=DejaVuSansMonoForPowerline\ NF:h10
    "set guifontwide=Consolas:h11
    "set guifontwide=Fira\ Mono\ Medium\ for\ Powerline:h11
    set guifontwide=DejaVuSansMonoForPowerline\ NF:h11
else
    "colorscheme desert
    set background=dark
endif


" ============ "
" MIS AÑADIDOS "
" ============ "
" Plugins y detección de sintaxis
filetype plugin indent on

" Comportamiento de la interfaz
set backspace=indent,eol,start whichwrap+=<,>,[,] " Permite borrar final de línea
set wildmode=longest,list " Pressing <Tab> shows command suggestions similar to pressing <Tab> in bash
set mouse=a " Uso del ratón
set t_Co=256 " 256 colores

" Barra de estado
set number " Número de línea
set ruler " Muestra la posicion actual
set showcmd " Muestra el modo actual

" Tabuladores
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set list listchars=tab:→\ ,trail:~,eol:¬,extends:>,precedes:< "Mostrar espacios y tabuladores

" Búsqueda
set showmatch
set hlsearch
set incsearch
set ignorecase

" Backups
set nobackup " No hace backups
set noswapfile " No usa ficheros swp

" Coloreado de sintaxis
syntax on

" ----------------- "
" ATAJOS DE TECLADO "
" ----------------- "

" Se usará la coma como prefijo para muchos comandos
:let mapleader = ","

" Tecla para mostrar Tagbar
nmap <F8> :TagbarToggle<CR>

" backspace in Visual mode deletes selection
vnoremap <BS> d

" CTRL-X and SHIFT-Del are Cut
vnoremap <C-X> "+x
vnoremap <S-Del> "+x

" CTRL-C and CTRL-Insert are Copy
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y

" Use CTRL-S for saving, also in Insert mode
noremap <C-S>   :update<CR>
vnoremap <C-S>  <C-C>:update<CR>
inoremap <C-S>  <C-O>:update<CR>

" CTRL-Z is Undo; not in cmdline though
noremap <C-Z> u
inoremap <C-Z> <C-O>u

" CTRL-Y is Redo (although not repeat); not in cmdline though
noremap <C-Y> <C-R>
inoremap <C-Y> <C-O><C-R>

" CTRL-SHIFT-Z is Redo (although not repeat); not in cmdline though
noremap <C-S-Z> <C-R>
inoremap <C-S-Z> <C-O><C-R>

" CTRL-A is Select all
noremap <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A> <C-C>gggH<C-O>G
onoremap <C-A> <C-C>gggH<C-O>G
snoremap <C-A> <C-C>gggH<C-O>G
xnoremap <C-A> <C-C>ggVG

" CTRL-Tab is Next window
noremap <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
cnoremap <C-Tab> <C-C><C-W>w
onoremap <C-Tab> <C-C><C-W>w

" CTRL-F4 is Close window
noremap <C-F4> <C-W>c
inoremap <C-F4> <C-O><C-W>c
cnoremap <C-F4> <C-C><C-W>c
onoremap <C-F4> <C-C><C-W>c

" Alterna entre tema con fondo claro u oscuro
map <F11> :let &background = ( &background == "dark"? "light" : "dark" )<CR>

" Ejecuta el fichero actual
nnoremap <F5> :!%:p<Enter><Enter>
nnoremap <leader>r :!%:p<Enter><Enter>

" Ejecuta en Python
nnoremap <S-F5> :!python %:p<Enter><Enter>
nnoremap <leader>p :!python %:p<Enter><Enter>