"==============================================================================
" elianderson vimrc
"==============================================================================
set nocompatible                " No vi compatability

filetype off
" Pathogen Setup
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin indent on       " Enable file type detection.
syntax on                       " Enable Syntax

"===  Source Lib Files  =======================================================
for file in split(glob('~/.vim/lib/*.vim'), '\n')
  exe 'source' file
endfor
