" Search should be very magic
nnoremap / /\v
vnoremap / /\v

" Clear search highlighting
nnoremap <esc> :noh<return><esc>

set ignorecase " perfect cocktail for searching
set smartcase  " perfect cocktail for searching
set incsearch  " highlight current search matches
set showmatch  " move to search match
" set nohlsearch " Don't highlight the search after I am done
set gdefault   " All matches in a line are substituted
set hlsearch


" matchit mapping
nmap <tab> %
vmap <tab> %

