" Disable compatibility with vi which can cause unexpected issues
set nocompatible

" backspace to previous paragraph and various others
set backspace=eol,start

" Enable type file detection. vim will be able to try to detected the type of file in use.
filetype on

" Enable plugins and load plugins for the detected file type
filetype plugin on

" Load an indent file for the detected file type
filetype indent on

" Turn syntax highlighting on.
syntax on

" Turn on relative numbers but show current number line
set rnu
set number

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" do not save backup files.
set nobackup

" While searching through a file incrementally highlight matching characters
" as you type
set incsearch

" Ignore capital letters during search
set ignorecase

"Override the ignorecase option if searching for capital letters.
"This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen
set showcmd

" Show the mode you are on the last line
set showmode

" Show matching words during a search
set showmatch

" Use highlighting when doing a search
set hlsearch

" Enable auto completion menu after pressing TAB
set wildmenu

" Make wildmenu behave like similar to Bash completion
set wildmode=list:longest

" There are certain files that we would never want to edit wth Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*xlsx



" PLUGINS ----------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

    Plug 'dense-analysis/ale'
    Plug 'preservim/nerdtree'
    Plug 'embark-theme/vim', {'as': 'embark', 'branch': 'main' }
    Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' } 

call plug#end()

" }}}

colorscheme nightfly

" MAPPINGS ---------------------------------------------- {{{

let mapleader = ","

inoremap <leader><leader> <Esc>

nnoremap <space> :
nnoremap o o<esc>
nnoremap O O<esc>
nnoremap <leader>/ :noh<cr>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-k> <c-w>h
nnoremap <c-k> <c-w>l

noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

nnoremap <F3> :NERDTree<cr>
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

" }}} 

" VIMSCRIPT --------------------------------------------- {{{


" This will enable code folding
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}}

" STATUS LINE ------------------------------------------- {{{

set statusline=

" Status line left side
set statusline+=\ %F\ %M\ %Y\ %R

" use a divider to seperate the left sid efrom the right side
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}



