"
" my vimrc - mazzantibox@gmail.com
" default leader key: \
" Vundle needed
" node npm and js-beautifier needed
"


set laststatus=2
set t_Co=256
set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
filetype plugin indent on
set number

"VUNDLE ------------------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
"Plugin 'sickill/vim-monokai'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'joonty/vim-taggatron'
Plugin 'ervandew/supertab'
Plugin 'kien/ctrlp.vim'
Plugin 'grigio/vim-sublime'
Plugin 'vim-airline/vim-airline'
Plugin 'tacahiroy/ctrlp-funky'


"20160715 - javascript plugins
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'marijnh/tern_for_vim'

Plugin 'tpope/vim-surround'
Plugin 'honza/vim-snippets'

Plugin 'matze/vim-move'

" All of your Plugins must be added before the following line
call vundle#end()            " required

"/VUNDLE ------------------------------------------------------

"PATHOGEN -----------------------------------------------------
execute pathogen#infect()
"/PATHOGEN -----------------------------------------------------

"VIM AIRLINE ---------------------------------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1

"set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/


"POWERLINE -----------------------------------------------------

Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

set laststatus=2
set term=xterm-256color
set termencoding=utf-8
"set guifont=Ubuntu\ Mono\ derivative\ Powerline:10
set guifont=Ubuntu\ Mono
let g:Powerline_symbols = 'fancy'
"/POWERLINE -----------------------------------------------------

"CTRLP ----------------------------------------------------------
set runtimepath^=~/.vim/bundle/ctrlp.vim

"SUPERTAB -------------------------------------------------------
let g:SuperTabDefaultCompletionType = ""

"SYNTASTIC ------------------------------------------------------
" This does what it says on the tin. It will check your file on open too, not
" just on save.
" You might not want this, so just leave it out if you don't.
let g:syntastic_check_on_open=1

"YOUCOMPLETEME --------------------------------------------------
" These are the tweaks I apply to YCM's config, you don't need them but they
" might help.
" YCM gives you popups and splits by default that some people might not
" like, so these should tidy it up a bit for you.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
"set shortmess+=c

"NERDTREE -------------------------------------------------------
map <C-n> :NERDTreeToggle<CR>

"CUSTOM HOTKEYS
"MOVE LINES -----------------------------------------------------
"nnoremap <s-down> :m .+1<CR>==
"nnoremap <s-up> :m .-2<CR>==
"inoremap <s-down> <Esc>:m .+1<CR>==gi
"inoremap <s-up> <Esc>:m .-2<CR>==gi
"vnoremap <s-down> :m '>+1<CR>gv=gv
"vnoremap <s-up> :m '<-2<CR>gv=gv

"vim-move
let g:move_key_modifier = 'C'


"For ctrlp-funky
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1

map <C-o> :CtrlPBufTagAll<CR>
"map <C-o> :CtrlPFunky<CR>

"call js-beautify
nnoremap <leader>ff :%!js-beautify -j -q -B -f -<CR>


colorscheme molokai

"enable clean transparency on tmux
"hi Normal ctermbg=none

"eliminate transparency on tmux
set t_ut=

set mouse=a
"set number
"set cursorline



