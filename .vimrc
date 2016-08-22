" Set Vim properties

set nocompatible              " be iMproved, required
set hlsearch
set rnu
set number

set rtp+=~/.vim/bundle/Vundle.vim

filetype off                  " required

" Vim Plugins
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'
Plugin 'slim-template/vim-slim.git'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/ZoomWin'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'jceb/vim-orgmode'

call vundle#end()            " required

syntax enable
filetype plugin indent on    " required

" Shift Enter will insert new line without going to insert mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <Space> :nohlsearch<Bar>:echo<CR>

" NERDTree helpers
" autocmd VimEnter * NERDTree
" autocmd BufEnter * NERDTreeMirror
nmap <silent> <c-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Close vim if only one tab is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Vim Better Whitespace
" Remove whitespace by default
autocmd BufWritePre * StripWhitespace

" Styling
colorscheme jellybeans

"Reload vimrc on pressing ,rv in normal mode
nnoremap rv :source $MYVIMRC<CR>

" For vim-orgmode, Have to check and start using it
" :let g:org_agenda_files=['~/org/index.org']
