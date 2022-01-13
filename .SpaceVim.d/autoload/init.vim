function! init#before() abort
  let g:mapleader = ','

  imap jj <esc>

    " Quick save
  nnoremap <leader>m :wa! <return>
endfunction

function! init#after() abort
  set clipboard=unnamed
  set ignorecase " perfect cocktail for searching
  set smartcase  " perfect cocktail for searching
  set incsearch  " highlight current search matches
  set showmatch  " move to search match
  set nohlsearch " Don't highlight the search after I am done
  set gdefault   " All matches in a line are substituted
  set encoding=UTF-8

  let g:jsx_ext_required = 0
  let g:javascript_plugin_flow = 1
  let g:webdevicons_enable = 1
  let g:webdevicons_enable_vimfiler = 1
  let g:syntastic_python_checkers = ['flake8', 'pylint', 'python']
  let g:NERDTreeShowHidden=1
  let g:spacevim_enable_statusline_bfpath = 1
  let g:go_fmt_fail_silently = 1

  if exists('$TMUX')
    let &t_EI="\<Esc>[2 q"
    let &t_SI="\<Esc>[6 q"
  else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif

  " upon hitting escape to change modes,
  " send successive move-left and move-right
  " commands to immediately redraw the cursor
  inoremap <special> <Esc> <Esc>hl

  " don't blink the cursor
  set guicursor+=i:blinkwait0

  nnoremap ∆ :m .+1<CR>==
  nnoremap ˚ :m .-2<CR>==
  inoremap ∆ <Esc>:m .+1<CR>==gi
  inoremap ˚ <Esc>:m .-2<CR>==gi
  vnoremap ∆ :m '>+1<CR>gv=gv
  vnoremap ˚ :m '<-2<CR>gv=gv

  nnoremap / /\v
  vnoremap / /\v
  nnoremap <silent> <Leader>f :call FZFProjectRoot()<CR>
  nnoremap <silent> <Leader>v :NERDTreeToggle<CR>

  " autocmd FileType javascript setlocal shiftwidth=4 tabstop=4
  autocmd FileType php setlocal expandtab shiftwidth=4 softtabstop=4

  set t_ZH=[3m
  set t_ZR=[23m
endfunction

function! FZFProjectRoot()
    let project_root = system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
    if strlen(project_root) > 0
        call fzf#run(fzf#wrap('FZFProjectRoot', {'dir': project_root}))
    else
        call fzf#run(fzf#wrap('FZFProjectRoot'))
    endif
endfunction
