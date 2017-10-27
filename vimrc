set background=dark
syntax on
set number

set backspace=indent,eol,start

" First check if vim has clipboard support
set clipboard=unnamedplus

set wildmode=longest,list

set expandtab sts=0 sw=4 ts=4
set cindent
set cinoptions=(0,u0,U0

set laststatus=2
set showtabline=2 " Always display the tabline, even if there is only one tab

" Changing tabs
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap tn :tabnew<CR>
nnoremap tc :tabclose<CR>
