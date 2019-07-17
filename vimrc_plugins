" ====== "
" VUNDLE "
" ====== "
set nocompatible              " VI iMproved, required
filetype off                  " required

let win_shell = (has('win32') || has('win64')) && &shellcmdflag =~ '/' " Checks if you are in windows
let vimDir = win_shell ? '$HOME/vimfiles' : '$HOME/.vim'
let &runtimepath .= ',' . expand(vimDir . '/bundle/Vundle.vim')
call vundle#rc(expand(vimDir . '/bundle'))

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" PUT HERE YOUR PLUGINS:
"Plugin 'Valloric/YouCompleteMe'         " Code autocomplete
Plugin 'nvie/vim-flake8'                " Python code validator
Plugin 'vim-airline/vim-airline'        " Status line
Plugin 'vim-airline/vim-airline-themes' " Themes for status line
"Plugin 'powerline/powerline'            " Another status line
Plugin 'majutsushi/tagbar'              " Panel with symbols and functions
"Plugin 'mhinz/vim-signify'             " Show changes in several SCM
Plugin 'airblade/vim-gitgutter'         " Show changes in a GIT repository
Plugin 'jmcantrell/vim-virtualenv'      " Show Python's active virtualenv
Plugin 'tomtom/quickfixsigns_vim'       " Shows errors and warnings in the gutter
Plugin 'scrooloose/syntastic'           " Syntax checker
Plugin 'scrooloose/nerdtree'            " Nerdtree, file navigator
Plugin 'weynhamz/vim-plugin-minibufexpl' " Vim buffers control
Plugin 'terminus'                       " Linux terminal improved
Plugin 'scrooloose/nerdcommenter'       " Comment helper
Plugin 'flazz/vim-colorschemes'         " Color schemes
Plugin 'edkolev/tmuxline.vim'           " Color synchronization with tmux

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


" --------------------"
" PLUGIN CONFIGURATION "
" -------------------- "

" ······· "
" Airline "
" ······· "
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

" Options to check on loading. Very slow.
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" ········· "
" ctrlspace "
" ········· "
set nocompatible
set hidden

" ········ "
" tmuxline "
" ········ "
let g:tmuxline_preset = 'tmux'

" ========== "
" MS WINDOWS "
" ========== "

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


" ========= "
" MY CONFIG "
" ========= "
" Syntax highlighting
filetype plugin indent on

" GUI config
set backspace=indent,eol,start whichwrap+=<,>,[,] " Allow to delete end of line
set wildmode=longest,list " Pressing <Tab> shows command suggestions similar to pressing <Tab> in bash
set mouse=a " Mouse
set t_Co=256 " 256 colores (it term supports it)

" Status bar
set number " Line number
set ruler " Actual cursor location
set showcmd " Actual vim mode

" Tabs and spaces
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set list listchars=tab:→\ ,trail:~,eol:¬,extends:>,precedes:< "Shows spaces and tabs

" Búsqueda
set showmatch
set hlsearch
set incsearch
set ignorecase

" Backups
set nobackup " Don't make backups
set noswapfile " Don's use swp temporal files

" Syntax highlightning active
syntax on

" ------------- "
" KEY SHORTCUTS "
" ------------- "

" Comma as command prefix (used by several plugins)
:let mapleader = ","

" F8 shows tagbar
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

" Execute current buffer
nnoremap <F5> :!%:p<Enter><Enter>
nnoremap <leader>r :!%:p<Enter><Enter>

" Execute in Python
nnoremap <S-F5> :!python %:p<Enter><Enter>
nnoremap <leader>p :!python %:p<Enter><Enter>

