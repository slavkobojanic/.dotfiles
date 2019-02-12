set rtp+=/usr/local/opt/fzf

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/goyo.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'w0rp/ale'
Plug 'Valloric/YouCompleteMe'
Plug 'Raimondi/delimitMate'
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
call plug#end()

" Cursor shapes with non-dependency on terminal type
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" ALE configuration in correrspondence with my .prettierrc and .eslintrc
let b:ale_fixers = ['prettier', 'eslint']
let g:ale_fix_on_save = 1
let g:airline#extensions#ale#enabled = 1

" YCM default hide scratch window
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" Gutentags status
set statusline+=%{gutentags#statusline()}

" Colorscheme
set t_Co=256
set termguicolors
let ayucolor="mirage"
colorscheme ayu
let g:airline_theme='ayu'

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

" Keybindings
let mapleader=","

nnoremap <leader>gd :ALEGoToDefinition<CR>
nnoremap <leader>gf :ALEFindReferences<CR>

nnoremap <leader>. :NERDTreeToggle<CR>

nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :GFiles<CR>
