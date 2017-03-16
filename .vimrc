set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

call vundle#end()

filetype plugin indent on
set nocompatible
set backspace=2

set colorcolumn=110
highlight ColorColumn ctermbg=darkgray


" ----- TEMPLATES -----

" c file template
autocmd bufnewfile *.c so ~/.vim/c_template.txt                                                                 
autocmd bufnewfile *.c exe "1," . 5 . "g/File Name :.*/s//File Name : " .expand("%")                          
autocmd bufnewfile *.c exe "1," . 5 . "g/Creation Date :.*/s//Creation Date : " .strftime("%d-%m-%Y")         
autocmd bufnewfile *.c exe "1," . 5 . "g/Created By :.*/s//Created By : " .expand($USER)                      
autocmd Bufwritepre,filewritepre *.c execute "normal ma"                                                      
autocmd Bufwritepre,filewritepre *.c exe "1," . 5 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
autocmd bufwritepost,filewritepost *.c execute "normal `a"
