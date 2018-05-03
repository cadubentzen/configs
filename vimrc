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
Plug 'ntpeters/vim-better-whitespace'

" Initialize plugin system
call plug#end()

set background=dark
syntax on
set number

set clipboard=unnamedplus

set backspace=indent,eol,start
set wildmode=longest,list
set incsearch

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

" For NerdTree
map <C-n> :NERDTreeToggle<CR>

" For fzf
map <C-f> :FZF<CR>

" For git difftool to edit files
set noro

" For vim-workspace
nnoremap ws :ToggleWorkspace<CR>

