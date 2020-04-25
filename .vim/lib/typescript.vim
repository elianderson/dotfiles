set ballooneval
" autocmd FileType typescript setlocal balloonexpr=tsuquyomi#balloonexpr()

autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>

augroup typescript
  au!
  autocmd BufNewFile,BufRead *.tsx   set filetype=typescript
  autocmd BufNewFile,BufRead *.tsx   set syntax=typescriptreact
  autocmd BufNewFile,BufRead *.ts   set filetype=typescript
  autocmd BufNewFile,BufRead *.ts   set syntax=javascript
augroup END
