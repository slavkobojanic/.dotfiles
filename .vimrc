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
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'wakatime/vim-wakatime'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Cursor shapes with non-dependency on terminal type
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Vim JSX
let g:jsx_ext_required = 1

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
syntax enable
colorscheme onedark
let g:airline_theme = 'onedark'
let g:solarized_termcolors=256
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

if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
