call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'Yggdroot/indentLine'
Plug 'ludovicchabant/vim-gutentags'
Plug 'Valloric/YouCompleteMe'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'mhartington/oceanic-next'
call plug#end()


"==============
"COMMANDS
"=============
" Map the leader key to SPACE
let mapleader="\<SPACE>"
let g:ackprg = 'ag --nogroup --nocolor --column'


"==============
" MAPPINGS
"==============

nnoremap <C-p> :FZF<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
map :bash :e term://bash
nmap = :res+10<CR>
nmap - :res-10<CR>
" Write file
nmap <LEADER>w :w <Enter>
nmap <LEADER>q :q <Enter>

" Indent block in visual mode
vmap <Tab> <S->>
vmap <S-Tab> <S-<>

"Indent and space in normal mode
nnoremap <Tab> i<Tab><esc>
nnoremap <Space> i<Space><esc>
" Remove white spaces
nmap <LEADER>s<SPACE> :%s/\s\+$//g <Enter>
" Search and Replace
nmap <Leader>s :%s//g<Left><Left>
" Source .vimrc
nmap <silent> <F1> :so $MYVIMRC <Enter>
nmap <silent> <Enter> gt
nmap <silent> <BACKSPACE> gT
"SETTINGS
"==========
set mouse=a
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=2           " Render TABs using this many spaces.
set shiftwidth=2        " Indentation amount for < and > commands.

set noerrorbells        " No beeps.
set modeline            " Enable modeline.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

if !&scrolloff
  set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set nostartofline       " Do not jump to first character with page commands.

set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

" Search and Replace


"==========
"THEMES
"==========
" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:indent_guides_start_level = 2
let g:indent_guides_auto_colors = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 3

"let g:indentLine_char = '┆'
" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" Theme
filetype plugin indent on
syntax enable
colorscheme OceanicNext
