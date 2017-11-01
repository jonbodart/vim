" Inspired by responses on stackoverflow.com such as
" https://stackoverflow.com/questions/14533877/ideal-c-setup-for-vim

set exrc
set secure

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

call vundle#end()
filetype plugin indent on

set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

set autoindent
set smartindent

set tabstop=2
set shiftwidth=2
set expandtab

set textwidth=80
set colorcolumn=80
highlight ColorColumn ctermbg=darkgray
syntax on

set number
set showmatch

set laststatus=2
set ruler
set tags=./tags,tags;/

" By default, fold all the blocks
set foldenable

" Automatically change directory when opening a new file
set autochdir

" Make menu of auto-completion suggestions appear
set wildmenu

autocmd BufWritePre * %s/\s\+$//e

" Templates

" c & h files templates
autocmd bufnewfile *.c so ~/.vim/c_template.txt
autocmd bufnewfile *.h so ~/.vim/h_template.txt
autocmd bufnewfile *.c,*.h exe "1," . 8 . "g/@file.*/s//@file " .expand("%")
autocmd bufnewfile *.c,*.h exe "1," . 8 . "g/@date.*/s//@date " .strftime("%d-%m-%Y")
autocmd bufnewfile *.c,*.h exe "1," . 8 . "g/@author.*/s//@author " .expand($USER)
autocmd Bufwritepre,filewritepre *.c,*.h execute "normal ma"
autocmd Bufwritepre,filewritepre *.c,*.h exe "1," . 8 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
autocmd bufwritepost,filewritepost *.c,*.h execute "normal `a"
