" This is the vimrc file.
"
" inspiration from
"   http://nvie.com/posts/how-i-boosted-my-vim
"   http://raw.github.com/spladug/.dotfiles/master/.vimrc

" not backward compatible, since we used lots of new tings
set nocompatible


set nowb
set tw=78


" for pathogen
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" for pydiction, set the diction position
let g:pydiction_location = '~/.vim/bundle/pydiction_v1.2/complete-dict'

"set up the taglist plugin
 let Tlist_Use_Right_Window=1
 let Tlist_Auto_Open=1
" for syntax highlight in c.vim
let c_C99=1

" enable filetype plugin
if has("eval")
  filetype plugin on
  filetype indent on
endif

" internationalization
if has("multi_byte")
  set termencoding=utf-8
  set encoding=utf-8
  set fileencodings=utf-8
endif

" jump back to the last editing position
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" python tweaks
au FileType python set complete+=k~/.vim/syntax/python.vim
let python_slow_sync=1

"open NERDTree by default
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" hide generated files from NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$', '\.o', '\.so', '\.class']
set wildignore+=*.pyc,*~,*.o,*.so,*.class

" highlight columns which are too long
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

" highlight trailing whitespace
"highlight ExtraWhitespace guifg=#eeeeec guibg=#880000 ctermbg=red
"autocmd BufWinEnter * match ExtraWhitespace /\s\+\%#\@<!$/

" hides buffers instead of closing them
" means you can have unwritten changes to a file and open a new file using :e,
" without being forced to write or undo your changes first
set hidden

" don't wrap lines
set nowrap

" set tab and spaces
set softtabstop=2
set expandtab
set smartindent
set shiftwidth=4
set tabstop=4

set mouse-=a            "enable mouse in all modes
set autoread            " automatically read file when it is changed from the outside
set autowrite           " automatically write when calling commands like :next and :make
set ignorecase          " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smartcase
set incsearch           " incremental search
set hlsearch            " highlight search
set showmatch           " show matching brace
set number              " show line number
set title               " change terminal's title
"set cursorline         " underline current line

" a large undo history
set history=1000
set undolevels=1000

" allow backspacing over everything in insert mode
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set nobackup                    " no backup
set noswapfile                  " no .swp files
set showcmd                     " show (partial) command in status line

" turn on WiLd menu
set wildmenu

set ruler                       " always show current position
"set cmdheight=2                " command bar is 2 high
set whichwrap+=<,>,h,l          " backspace and cursor keys wrap to
set magic                       " set magic on
set scrolloff=4                 " keep 4 lines off the edges of the screen when scrolling
"set showmode                   " always show what mode we are currently in
"set list                       " mark the white spaces in file
"set listchars=tab:>.,trail:.,extends:#,nbsp:.  " char for mark whites

syntax on                       " enable syntax
colorscheme wombat              " use color scheme

set bg=dark
