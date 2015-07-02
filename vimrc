set nocompatible 
filetype off       
"clon vim vundle 
"git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle.vim
set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()
Plugin 'gmarik/vundle.vim'
Plugin 'gmarik/Vundle'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'zeis/vim-kolor'
Plugin 'xolox/vim-misc'
Plugin 'tpope/vim-repeat'
Plugin 'gregsexton/MatchTag'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-vividchalk'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'skammer/vim-css-color'
Plugin 'tpope/vim-rails'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ervandew/supertab'
" go to the vundle dir and type ./install.sh --clang-completer
Plugin 'Valloric/YouCompleteMe'
Plugin 'othree/html5.vim'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'altercation/vim-colors-solarized'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-surround'
Plugin 'mileszs/ack.vim'
call vundle#end()   
filetype plugin indent on
filetype on
" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set timeoutlen=500
" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd     " Show (partial) command in status line.
set showmatch       " Show matching brackets.
set ignorecase      " Do case insensitive matching
set smartcase       " Do smart case matching
set incsearch       " Incremental search
set hidden      " Hide buffers when they are abandoned
set mouse=nicr     " Enable mouse usage (all modes)
" Press F3 to turn off highlighting and clear any message already
" displayed.
nnoremap <F3> :set hlsearch!<CR>
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set confirm
set noshowmode 
set nostartofline
"set switchbuf=usetab,newtab
"gem tags with the gem
set tags+=gems.tags
"ctrlp 
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
        \ --ignore .git
        \ --ignore .svn
        \ --ignore .hg
        \ --ignore .DS_Store
        \ --ignore tmp
        \ --ignore .zip
        \ --ignore .swp
        \ --ignore "**/*.pyc"
        \ -g ""'
endif
nmap <c-b> :CtrlPBuffer<CR>
"theme
syntax on
colorscheme vividchalk
"let g:solarized_termtrans=1
set background=dark
"hi IndentGuidesOdd  ctermbg=black
"hi IndentGuidesEven ctermbg=darkgrey
"remps
let mapleader="\<Space>"
nmap <leader>nt :NERDTreeToggle<cr>
nmap <leader>nf :NERDTreeFind<cr>
nnoremap <Leader>w :w<CR>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]


"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
"vim-airline debes instalar powerline fonts pa que se vea bie
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#buffer_min_count = 2
set laststatus=2
set t_Co=256
hi Normal guibg=NONE ctermbg=NONE
