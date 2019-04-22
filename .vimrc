execute "set t_8f=\e[38;2;%lu;%lu;%lum"
execute "set t_8b=\e[48;2;%lu;%lu;%lum"

set rtp+=/usr/local/opt/fzf

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/goyo.vim'
Plug 'Raimondi/delimitMate'
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf.vim'
Plug 'prettier/vim-prettier'
Plug 'scrooloose/nerdtree'
Plug 'joshdick/onedark.vim'
call plug#end()

" Cursor shapes with non-dependency on terminal type
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Prettier Config
let g:prettier#config#parser = 'flow'
let g:prettier#config#tab_width = 2
let g:prettier#config#use_tabs = 'true'
let g:prettier#config#semi = 'true'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'all'
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" Colorscheme
if has("termguicolors")
	set termguicolors
endif
set t_Co=256
set termguicolors
set bg=dark
colorscheme onedark
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1

" Remove error-bell visual aid
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" General vim configs
set number
set showbreak=+++
set undolevels=1000
set backspace=indent,eol,start
set autochdir

" Keybindings
let mapleader=","

" -- General Binds

" -- NerdTREE
nnoremap <leader>. :NERDTreeToggle<CR>

" -- FuzzyFile
nnoremap <leader>f :Files<CR>
nnoremap <leader>g :GFiles<CR>
