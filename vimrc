" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'alvan/vim-closetag'
Plug 'junegunn/fzf'
Plug 'thaerkh/vim-workspace'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdcommenter'

" Initialize plugin system
call plug#end()

set background=dark
syntax on
set number

set backspace=indent,eol,start
set wildmode=longest,list
set incsearch

set expandtab sts=0 sw=4 ts=4
set cindent
set cinoptions=(0,u0,U0

set laststatus=2
set showtabline=2 " Always display the tabline, even if there is only one tab

set mouse=a

" Changing tabs
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap tn :tabnew<CR>
nnoremap tc :tabclose<CR>

nmap <C-n> :NERDTreeToggle<CR>
nmap <C-f> :FZF<CR>

nnoremap tw :ToggleWorkspace<CR>

