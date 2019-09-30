if empty(glob('~/.vim/autoload/plug.vim')) 
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs 
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set number
syntax on
set mouse=a
set nocompatible              " be iMproved, required
filetype plugin indent on    " required
set cursorline

call plug#begin('~/.vim/bundle') 
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'vim-scripts/L9'
Plug 'stanangeloff/php.vim'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'lumiliet/vim-twig'
Plug 'sbdchd/neoformat'
call plug#end()


autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:airline#extensions#keymap#enabled = 0 
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" 
let g:Powerline_symbols='unicode' "Поддержка unicode

augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END

colorscheme sublimemonokai
