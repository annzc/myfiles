" general set
syntax enable
set mouse=a
set noswapfile nobackup
set scrolloff=4
set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab
set noshowmode
filetype plugin indent on

" tab handling for some filetype
autocmd filetype html,css,javascript,json,typescript,sh setlocal tabstop=2 softtabstop=2 shiftwidth=2
" disable auto comment because it's so fucking annoying
autocmd filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
