"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Use spaces instead of tabs
set expandtab
"
" " Be smart when using tabs ;)
set smarttab
"
" " 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" save undo trees in files
set undofile
set undodir=~/.vim/undo

" number of undo saved
set undolevels=10000

set autoindent
" " turn on syntax highlighting
syntax on
" set number
set relativenumber

" Ignore case when searching
set ignorecase

" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch

" set scrolloff=7

" set jk for esc
inoremap jk <esc>


" trun off search highlight
nnoremap ,<space> :nohlsearch<CR>

""""""""""""""""""""""""""""""
" => Status line
" """"""""""""""""""""""""""""""
" " Always show the status line
set laststatus=2
"
" " Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"After in vim run :plugininstall
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'hashivim/vim-terraform'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
" post install (yarn install | npm install) then load plugin only for editing supported files
" for work need run npm i prettier
"#Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <C-o> :NERDTreeToggle<CR>

" For vim-gittgutter
let g:gitgutter_sign_added = '➕'
let g:gitgutter_sign_modified = '✔'
let g:gitgutter_sign_removed = '➖'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '~_'
" let g:gitgutter_highlight_lines = 1

" For vim-autoformat
noremap <C-a> :Prettier<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" Turn on/off number
function! NumberToggle()
    if(&rnu == 1)
        set nornu nonu
        GitGutterToggle
    else
        set rnu
        GitGutterToggle
    endif
endfunc

nnoremap <C-l> :call NumberToggle()<cr>



" zfz
set rtp+=/opt/homebrew/opt/fzf
