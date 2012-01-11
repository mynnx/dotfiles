filetype off 
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin on

set nocompatible    " use vim defaults
set ls=2            " always show status line
set tabstop=4       " numbers of spaces of tab character
set shiftwidth=4    " numbers of spaces to (auto)indent
set scrolloff=10     " keep 3 lines when scrolling
set showcmd         " display incomplete commands
set hlsearch        " highlight searches
set incsearch       " do incremental searching
set ruler           " show the cursor position all the time
set visualbell t_vb=    " turn off error beep/flash
set novisualbell    " turn off visual bell
set nobackup        " do not keep a backup file
set number          " show line numbers
set ignorecase      " ignore case when searching
"set noignorecase   " don't ignore case
"set ttyfast         " smoother changes
"set ttyscroll=0        " turn off scrolling, didn't work well with PuTTY
set modeline        " last lines in document sets vim mode
set modelines=3     " number lines checked for modelines
set shortmess=atI   " Abbreviate messages
set nostartofline   " don't jump to first character when paging
set whichwrap=b,s,h,l,<,>,[,]   " move freely between files
"set viminfo='20,<50,s10,h

" indentation stuff
set autoindent     " always set autoindenting on
set smartindent        " smart indent
"set cindent            " cindent
"set noautoindent
"set nosmartindent
set nocindent  

set autowrite      " auto saves changes when quitting and swiching buffer
"set expandtab      " tabs are converted to spaces, use only when required
set sm             " show matching braces, somewhat annoying...
set nowrap         " don't wrap lines
set et

set background=dark
set t_Co=256	" enable 256-color support http://www.alfredrossi.com/?p=49
colorscheme molokai
syntax on

imap jj <Esc>
map <C-j> <Esc>:tabp<CR>
map <C-k> <Esc>:tabn<CR>
map <C-u> <Esc>:NERDTreeToggle<CR>
map <Leader>se <Esc>:SessionList<CR>
set tags+=tags;

" from naveed's vimrc
set history=500
set keywordprg=perldoc\ -f
set clipboard=unnamed
set ttymouse=xterm2

" trailing whitespace stuff
highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

let NERDTreeIgnore=['\.pyc$', '\~$']

" Source the vimrc file after saving it
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

