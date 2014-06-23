" This is vim's default, but lets be explicit anyways
let mapleader = ","

" Show extra white space
set list
set list listchars=tab:>-,trail:.,extends:>

" Format paragraph remapping
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Replace escape with jj when in insert mode
imap jj <esc>

" Dn insert mode
" imap on't require shift for entering commands
noremap ; :

" Clear search highlighting
"nnoremap <esc> :noh<return><esc>

" Remove arrow key functionality
nmap <Down> <c-d>
nmap <Up> <c-u>
nmap <Left> <nop>
nmap <Right> <nop>

" Move based on visual lines and not wrapped content
nnoremap j gj
nnoremap k gk

" Caps lock hjkl is great for window traversing
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Convenient window maker
map <leader>w <C-w>v<C-w>l

" Quick save
nnoremap <leader>m :w <return>

" Death to whitespace
nmap <F5> :%s/\s\+$//<return>

"Map the arrow keys to page up and down in normal mode
set pastetoggle=<F2>

" Map ctrl j to join lines
map <leader>j :join<return>

" Move lines of text around
nmap <S-j> :m .+1<CR>==
nmap <S-k> :m .-2<CR>==
vmap <S-j> :m '>+1<CR>gv=gv
vmap <S-k> :m '<-2<CR>gv=gv"

