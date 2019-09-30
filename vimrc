set number
syntax on
set mouse=a
nmap <C-F5> <Esc>:BufExplorer<cr>
vmap <C-F5> <esc>:BufExplorer<cr>
imap <C-F5> <esc>:BufExplorer<cr>

" F6 - предыдущий буфер
nmap <C-F6> :bp<cr>
vmap <C-F6> <esc>:bp<cr>i
imap <C-F6> <esc>:bp<cr>i

" F7 - следующий буфер
nmap <C-F7> :bn<cr>
vmap <C-F7> <esc>:bn<cr>i
imap <C-F7> <esc>:bn<cr>i

set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on    " required

if empty(glob('~/.vim/autoload/plug.vim')) "Если vim-plug не стоит
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs "Создать директорию
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
  "И скачать его оттуда
  "А после прогнать команду PlugInstall, о которой мы сейчас поговорим
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle') 
Plug 'tpope/vim-fugitive'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'altercation/vim-colors-solarized'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'vim-scripts/L9'
Plug 'stanangeloff/php.vim'
call plug#end()

autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:airline_powerline_fonts = 1 "Включить поддержку Powerline шрифтов
let g:airline#extensions#keymap#enabled = 0 "Не показывать текущий маппинг
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "Кастомная графа положения курсора
let g:Powerline_symbols='unicode' "Поддержка unicode
let g:airline#extensions#xkblayout#enabled = 0 

augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END

colorscheme sublimemonokai
set background=dark
colorscheme solarized


