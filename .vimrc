" .vimrc


set runtimepath^=~/.vim/bundle/ctrlp.vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The rest of them
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-haml'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jasoncodes/ctrlp-modified.vim'
Plugin 'terryma/vim-expand-region'
Plugin 'tomtom/tcomment_vim'
Plugin 'henrik/vim-qargs'
Plugin 'henrik/git-grep-vim'
Plugin 'ajh17/Spacegray.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'edkolev/tmuxline.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'myusuf3/numbers.vim'
Plugin 'mileszs/ack.vim'
Plugin 'whatyouhide/vim-gotham'
" Plugin 'rking/ag.vim'
" Plugin 'scrooloose/nerdtree'
" Plugin 'fmoralesc/vim-tutor-mode'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" No compatibility
set nocompatible
set encoding=utf-8

" Clear startup message
set shortmess+=I

" showmode -- outputs the "-- INSERT --", etc. messages on the last line
"   Disabled, since vim-airline displays the mode
set noshowmode

" splitbelow -- open horizontal splits below the current window
set splitbelow

" splitright -- open vertical splits to the right of the current window
set splitright

" Syntax highlighting

" Detect filetype
filetype plugin on
" Enable syntax highighting
syntax enable
" 256 colours, please
set t_Co=256
" Dark solarized scheme

" let g:solarized_termcolors=256

" set background=dark
" colorscheme solarized

" colorscheme spacegray
" colorscheme gotham
colorscheme gotham256
" colorscheme Tomorrow-Night
" colorscheme base16-railscasts
" colorscheme base16-twilight
" colorscheme base16-solarized

" set font size
if has('gui_running')
  " set guifont=Lucida_Console:h11
  " set guifont=Menlo\ Regular:h13
  set guifont=Inconsolata\ for\ Powerline:h16
endif



" Set relevant filetypes
" au BufRead,BufNewFile *.scss set filetype=css
" au BufRead,BufNewFile *.sass set filetype=sass
" au BufRead,BufNewFile *.md set filetype=markdown



" Tabs, indentation and lines

" 2 spaces please
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
" Round indent to nearest multiple of 4
set shiftround
" No line-wrapping
" set nowrap



" “This will cause Vim to treat all numerals as decimal, regardless of whether they are padded with zeros.”
set nrformats=

" Help me show modified files sinde last commit or branch
map <Leader>m :CtrlPModified<CR>
map <Leader>M :CtrlPBranch<CR>

" Interactions

" Start scrolling slightly before the cursor reaches an edge
set scrolloff=3
set sidescrolloff=5
" Scroll sideways a character at a time, rather than a screen at a time
set sidescroll=1
" Allow motions and back-spacing over line-endings etc
set backspace=indent,eol,start
set whichwrap=h,l,b,<,>,~,[,]
" Underscores denote words
set iskeyword-=_

" Split vertical windows to the right instead of left
set splitright

" Visual decorations

" Show status line
set laststatus=2
" Show what mode you’re currently in
" set showmode
" Show what commands you’re typing
set showcmd
" Allow modelines
set modeline
" Show current line and column position in file
set ruler
" Show file title in terminal tab
set title

set number

" Limit line-length to 80 columns by highlighting col 81 onward
if exists("+colorcolumn")
    set colorcolumn=81
endif
" Highlight current line
set cursorline
" Don’t keep results highlighted after searching...
set nohlsearch
nnoremap <F3> :set hlsearch!<CR>
" ...just highlight as we type
set incsearch
" Ignore case when searching...
set ignorecase
" ...except if we input a capital letter
set smartcase

" Key mappings

" jj to throw you into normal mode from insert mode
inoremap jj <esc>
" inoremap jk <esc>
" Disable arrow keys (hardcore)
" map  <up>    <nop>
" imap <up>    <nop>
" map  <down>  <nop>
" imap <down>  <nop>
" map  <left>  <nop>
" imap <left>  <nop>
" map  <right> <nop>
" imap <right> <nop>



" Insert newline without entering insert mode
nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>k


" tmux fun times
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> {Left-mapping} :TmuxNavigateLeft<cr>
nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

" Set Leader
let mapleader = "\<Space>"



" Use region expanding
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)



" Map your most frequent actions to Leader

"Type <Space>o to open a new file
nnoremap <Leader>o :CtrlP<CR>
" Type <Space>w to save file (a lot faster than :w<Enter>)
nnoremap <Leader>w :w<CR>
" Type <Space>b to open buffer list
nnoremap <Leader>b :CtrlPBuffer<CR>
" Enter visual line mode with <Space><Space>
" nmap <Leader><Leader> V

" associate filetypes
au BufRead, BufNewFile *.md set filetype=markdown


" Copy & paste to system clipboard with <Space>p and <Space>y"
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P


" Move all backupd to .vim/backup and swap to .vim/swap
 set backupdir=~/.vim/backup
 set directory=~/.vim/swap

 " Splits navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Remove scrollbars
set guioptions=egm


" ctrlp ignore stuff
" set wildignore+=*/buildout-cache/*,*/Python-2.7/*,*/Plone-4.2-UnifiedInstaller/*,*/tmp/*,*.so,*.swp,*.zip

" Set default starting directory settings
" 'c' - the directory of the current file.
" 'r' - the nearest ancestor that contains one of these directories or files: .git .hg .svn .bzr _darcs, and your own root markers defined with the g:ctrlp_root_markers option.
" 'a' - like 'c', but only applies when the current working directory outside of CtrlP isn't a direct ancestor of the directory of the current file.
" 0 or '' (empty string) - disable this feature.
let g:ctrlp_working_path_mode = 'ra'
"
let g:ctrlp_root_markers = ['skins']
" let g:ctrlp_working_path_mode = 0

" Set ignore maps
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn)$, */buildout-cache/*, */Plone-docs/*, */zeocluster/*, */Python-2.7/*, */Plone-4.2-UnifiedInstaller/*, */tmp/*',
	\ 'file': '\v\.(exe|so|dll)$',
	\ }


" > -- shift selection rightwards (preserve selection)        [Visual Mode]
vnoremap > >gv

" < -- shift selection leftwards (preserve selection)         [Visual Mode]
vnoremap < <gv


" according to http://evertpot.com/osx-tmux-vim-copy-paste-clipboard/ I need
" this for copy/paste from tmux
set clipboard=unnamed

" set F2 for :set paste/:nopaste toggle
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode


" open nerdgree
" map <C-n> :NERDTreeToggle<CR>


" open e .
nnoremap <Leader>e :e .<CR>

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" allow mouse clicks to change cursor position
set mouse=a

"
" jump between buffers
"
" Move to the previous buffer with "gp"
nnoremap gp :bp<CR>

" Move to the next buffer with "gn"
nnoremap gn :bn<CR>

" List all possible buffers with "gl"
nnoremap gl :ls<CR>

" List all possible buffers with "gb" and accept a new buffer argument [1]
nnoremap gb :ls<CR>:b

" Show Buffers at top
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
" let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1

" Open a new tab and search for something
nmap <leader>a :tab split<CR>:Ack ""<Left>

" Immedeately search for the word under the cursor in the new tab
nmap <leader>A :tab split<CR>:Ack <C-r><C-w><CR>


" Set default side
set lines=50 columns=145


" " set C-s for saving
" vmap <C-s> <esc>:w<CR>gv

" mapiram space + space + s v shranjevanje oz :w
" nnoremap <leader><leader>s <esc>:w<CR>

