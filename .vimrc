" AChao .vimrc

set nocompatible                                " be IMproved, required
filetype off                                    " required by Vundle    

set rtp+=~/.vim/bundle/Vundle.vim               " set the runtime path to include Vundle and initialize
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'w0rp/ale'                               " Asynchronous Lint Engine - this plugin allows you to lint while you type
Plugin 'Valloric/YouCompleteMe'                 " YouCompleteMe is a fast, as-you-type, fuzzy-search code completion engine
Plugin 'airblade/vim-gitgutter'                 " Vim-gitgutter shows a git diff in the 'gutter' (sign column)
Plugin 'vim-syntastic/syntastic'                " A powerful syntax checker
call vundle#end()                               " required
filetype plugin indent on                       " required

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
set path+=**                                    " Provides tab-completion for all file-related tasks
set wildmenu                                    " Display all matching files when we tab complete
set number                                      " show line numbers
set relativenumber                              " use relative line numbers
set ts=4                                        " set tabs to have 4 spaces
set autoindent                                  " indent when moving to the next line while writing code
set expandtab                                   " expand tabs into spaces
set shiftwidth=4                                " when using the >> or << commands, shift lines by 4 spaces
set cursorline                                  " show a visual line under the cursor's current line
set showmatch                                   " show the matching part of the pair for [] {} and ()
set backspace=indent,eol,start                  " make backspace work like in most other programs
set clipboard=unnamed                           " access system clipboard
set ruler                                       " show ruler
syntax enable                                   " enable syntax highlighting
let python_highlight_all = 1                    " enable all Python syntax highlighting features

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
