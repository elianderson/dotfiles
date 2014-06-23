set hidden "Show hidden files
set showmode

set number               " Show line numbers
set cursorline           " Always show cursor line
set novisualbell         " I don't mind beeping
set guicursor=a:blinkon0 " cursor setting

set cmdheight=2          " Two spaces for feedback down below

set wildmenu              " make tab completion for files/buffers act like bash
set wildmode=list:longest " show a list when pressing tab and complete
set wildignore=tmp/**     " patterns to ignore during file/directory completion

set winwidth=80           " Ensure that the splits are always at least 80 wide
set ttyfast                    " Improves terminal smoothness
set autoindent                 " always set autoindenting on
set backspace=indent,eol,start " Found this on the internet
set nowrap                     " Wrapping is ugly

set history=1000                " Allows for searching commands and searches
set ruler                      " show the cursor position all the time
set showcmd                    " display incomplete commands

set noswapfile                 " Thats right, its annoying having to clean these up

set clipboard+=unnamed        " yanks go on clipboard

"===  Tab  ====================================================================
let s:tab_num = 2          " How many spaces will tab be worth?
let &softtabstop=s:tab_num
let &shiftwidth=s:tab_num
let &tabstop=s:tab_num
set expandtab              " use spaces
set smarttab               " figure correct spaces to inject per tab

"===  Custom colorscheme  =====================================================
color molokai
set t_Co=256
"===  zsh ftw  ================================================================
set shell=zsh

"===  Change Cursor to line in Insert mode  ===================================
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"===  Change Auto change syntax highlighting ==================================
au BufReadPost *.hamlc set syntax=haml

" tmux will only forward escape sequences to the terminal if surrounded by a DCS sequence
" http://sourceforge.net/mailarchive/forum.php?thread_name=AANLkTinkbdoZ8eNR1X2UobLTeww1jFrvfJxTMfKSq-L%2B%40mail.gmail.com&forum_name=tmux-users
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
