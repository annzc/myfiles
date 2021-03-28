" mapping
" ESC alternative
inoremap jk <esc>
inoremap JK <esc>

" ctrl+s == save
nmap <C-s> :w<cr>
imap <C-s> <esc>:w<cr>
vmap <C-s> <esc>:w<cr>

" ctrl+q == exit vim
nmap <C-q> :q<cr>
imap <C-q> <esc>:q<cr>
vmap <C-q> <esc>:q<cr>

" tab for completion
inoremap <tab> <C-n>

" folder contents completion
inoremap <C-f> <C-x><C-f>

" highlight search disappeared
nnoremap <silent><esc> :noh<cr>

" shortcut for edit vimrc
nnoremap <silent>,init :tabe ~/.vimrc<cr>
nnoremap <silent>,so :so ~/.vimrc<cr>:echo 'sourced'<cr>

