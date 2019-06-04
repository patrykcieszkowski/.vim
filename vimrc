set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Numbers
set number
set numberwidth=5

set rnu
function! ToggleNumbersOn()
    set nu!
    set rnu
endfunction
function! ToggleRelativeOn()
    set rnu!
    set nu
endfunction
autocmd FocusLost * call ToggleRelativeOn()
autocmd FocusGained * call ToggleRelativeOn()
autocmd InsertEnter * call ToggleRelativeOn()
autocmd InsertLeave * call ToggleRelativeOn()

execute pathogen#infect()

autocmd vimenter * NERDTree

" treeview
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'itchyny/lightline.vim'
Plugin 'phanviet/vim-monokai-pro'

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

if &term =~ '256color'
    " disable background color erase
    set t_ut=
endif

" enable 24 bit color support if supported
if (has("termguicolors"))
   set termguicolors
endif

""let g:onedark_termcolors=256
""let g:onedark_terminal_italics=1

syntax on
set t_Co=256                  " Explicitly tell vim that the terminal supports 256 colors
""colorscheme onedark           " Set the colorscheme
""colorscheme material-theme
set guifont=Monaco\ 14
let g:sierra_Sunset = 1
colorscheme sierra 

" transparent background
""hi Normal          ctermfg=252 ctermbg=none

let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

let g:airline_theme='onedark'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

let g:airline_highlighting_cache = 1

set guifont=Source_Code_Pro_Light:h15:cANSI
set tags=tags

" keep mode selection on indentation changr
vnoremap < <gv
vnoremap > >gv

" highlight invisible chars
set list
set showbreak=↪\
set listchars=tab:→\ ,eol:¬,nbsp:␣,trail:•,extends:⟩,precedes:⟨
" set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
"
"augroup CursorLine
"  au!
"  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
"  au WinLeave * setlocal nocursorline
"augroup END

set background=dark
colorscheme material-monokai

let g:materialmonokai_italic=1
let g:materialmonokai_subtle_spell=1

" automatic closing brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>


" code folding
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

" nerd
let NERDTreeShowLineNumbers=1
