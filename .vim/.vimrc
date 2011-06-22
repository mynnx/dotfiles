filetype off        " needed for pathogen
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin on  " turn it back on.  @todo why 'filetype plugin?'

imap jj <Esc>
map <C-j> <Esc>:tabp<CR>
map <C-k> <Esc>:tabn<CR>
map <C-u> <Esc>:NERDTreeToggle<CR>
map <Leader>se <Esc>:SessionList<CR>

let NERDTreeIgnore=['\.pyc$', '\~$']
set tags+=tags;

" looks
set background=dark
set t_Co=256	" enable 256-color support http://www.alfredrossi.com/?p=49
colorscheme molokai
syntax on


" misc
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
set ttyfast         " smoother changes
set modeline        " last lines in document sets vim mode
set modelines=3     " number lines checked for modelines
set shortmess=atI   " Abbreviate messages
set nostartofline   " don't jump to first character when paging
set whichwrap=b,s,h,l,<,>,[,]   " move freely between files
set autowrite      " auto saves changes when quitting and swiching buffer
set expandtab      " tabs are converted to spaces
set sm             " show matching braces
set nowrap         " don't wrap lines

set history=500
set keywordprg=pydoc
set clipboard=unnamed   " @todo figure out clipboard
set ttymouse=xterm2

"set viminfo='20,<50,s10,h
"set noignorecase   " don't ignore case
"set ttyscroll=0        " turn off scrolling

" indentation  @todo this is sometimes a headache.
set autoindent     " always set autoindenting on
set smartindent
set nocindent  
"set cindent
"set noautoindent
"set nosmartindent


" Source this file after saving it, to reload changes
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

