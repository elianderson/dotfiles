"==============================================================================
" CommandT
"==============================================================================
let g:CommandTMatchWindowAtTop=1 " show window at top
noremap <leader>f :CommandT<return>
"==============================================================================
" ZenCoding
"==============================================================================
let g:user_zen_sestings = {
\  'php' : {
\    'extends' : 'html',
\    'filters' : 'c',
\  },
\  'xml' : {
\    'extends' : 'html',
\  },
\  'haml' : {
\    'filters' : 'haml', 
\  },
\  'sass' : {
\    'extends' : 'css',
\    'filters' : 'sass',
\  },
\}

let g:user_zen_expandabbr_key = '<c-e>'
let g:user_zen_next_key = '<leader><tab>'
let g:user_zen_prev_key = '<c-g>'

" Remap zen coding
imap <C-z> <C-Y>, 
imap <D-e> <C-y>,

"==============================================================================
" Ack
"==============================================================================
nnoremap <Leader>s :Ack -a 

"==============================================================================
" NERDTree
"==============================================================================
map <Leader>v :NERDTreeToggle<cr>
let NERDTreeShowHidden=1 "Show hidden files in nerd tree
let NERDTreeIgnore = ['.DS_Store']
autocmd VimEnter * wincmd p

"==============================================================================
" GIT commit spell
"==============================================================================
autocmd Filetype gitcommit setlocal spell textwidth=72
