filetype off

""" PLUGINS
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree.git'
Plugin 'Shougo/neocomplete.vim.git'
Plugin 'tomtom/tcomment_vim.git'
Plugin 'tpope/vim-surround.git'
Plugin 'ctrlpvim/ctrlp.vim.git'
Plugin 'rking/ag.vim'
Plugin 'jiangmiao/auto-pairs.git'
Plugin 'scrooloose/syntastic'
Plugin 'nathanaelkane/vim-indent-guides.git'
Plugin 'vim-scripts/IndexedSearch'
Plugin 'tpope/vim-repeat.git'
" Plugin 'tpope/vim-unimpaired.git'

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'tpope/vim-fugitive.git'
Plugin 'tpope/vim-rhubarb.git'
Plugin 'tpope/vim-git.git'

Plugin 'tpope/vim-markdown.git'
Plugin 'mxw/vim-jsx.git'
Plugin 'pangloss/vim-javascript.git'
"Plugin 'jelera/vim-javascript-syntax'

"Plugin 'kevinw/pyflakes-vim.git'
"Plugin 'vim-scripts/jpythonfold.vim'
"Plugin 'nvie/vim-pep8'
"Plugin 'vim-scripts/cscope_macros.vim.git'

Plugin 'vim-scripts/Zenburn.git'
Plugin 'tpope/vim-vividchalk.git'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'nanotech/jellybeans.vim'
Plugin 'kristoferjoseph/molokai.vim'
Plugin 'w0ng/vim-hybrid.git'
Plugin 'brendonrapp/smyck-vim.git'

call vundle#end()
filetype plugin indent on

""" MAPPINGS
imap jj <Esc>
noremap H ^
noremap L $
noremap gH H

noremap gL L
noremap <C-h> gT
noremap <C-l> gt
noremap <C-u> :NERDTreeToggle<CR>

""" PLUGIN CONFIG
let NERDTreeIgnore=['\.pyc$', '\~$']
let g:SuperTabDefaultCompletionType = "context"

let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1

set statusline=%f
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:jsx_ext_required = 0

let g:UltiSnipsExpandTrigger="<tab>"

""" THEME
set background=dark
colorscheme hybrid
" let g:hybrid_use_Xresources = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=233
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=234

" set background=light
" colorscheme solarized
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=230
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=224


""" VIM CONFIG
syntax on
set t_Co=256	" enable 256-color support http://www.alfredrossi.com/?p=49
set backspace=indent,eol,start
set nocompatible    " use vim defaults
set autowrite      " auto saves changes when quitting and swiching buffer
set expandtab      " tabs are converted to spaces, use only when required
set sm             " show matching braces, somewhat annoying...
set nowrap         " don't wrap lines
set laststatus=2            " always show status line
set scrolloff=10     " keep 3 lines when scrolling
set showcmd         " display incomplete commands
set hlsearch        " highlight searches
set incsearch       " do incremental searching
set ruler           " show the cursor position all the time
set visualbell t_vb=    " turn off error beep/flash
set novisualbell    " turn off visual bell
set noerrorbells
set number          " show line numbers
set relativenumber  " show relative line numbers
set ignorecase      " ignore case when searching
set ttyfast         " smoother changes
set modeline        " last lines in document sets vim mode
set modelines=3     " number lines checked for modelines
set cursorline      " Highlight current line
set shortmess=atI   " Abbreviate messages
set nostartofline   " don't jump to first character when paging
set whichwrap=b,s,h,l,<,>,[,]   " move freely between files
set title           " Show the filename in the window titlebar
set history=500
set diffopt+=iwhite " Ignore whitespace changes (focus on code changes)
set clipboard=unnamed
set ttymouse=xterm2
set mouse=a     " Enable mouse in all modes

set wildmenu        " Enhance command-line completion
set wildmode=longest:full,full
set wildchar=<TAB> " Character for CLI expansion (TAB-completion).
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/smarty/*,*/vendor/*,*/node_modules/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/dist/*

set splitbelow " When on, splitting a window will put the new window below the current one.
set splitright " When on, splitting a window will put the new window right of the current one.
set autoread " When a file has been detected to have been changed outside of Vim and it has not been changed inside of Vim, automatically read it again.

set foldenable
set foldmethod=syntax
set foldlevelstart=20 " Don't open my files with fucking folds, Vim.

set backup                        " enable backups
set noswapfile                    " it's 2015, Vim.
set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files"

" indentation stuff
set tabstop=2       " numbers of spaces of tab character
set shiftwidth=2    " numbers of spaces to (auto)indent
set softtabstop=2
set autoindent     " always set autoindenting on
set shiftround
set smartindent        " smart indent
set nocindent

" trailing whitespace stuff
highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Source the vimrc file after saving it
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif
