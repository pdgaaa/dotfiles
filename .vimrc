set nocompatible

" for Vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'pearofducks/ansible-vim'
Plugin 'cespare/vim-toml'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline-themes/vim-airline-themes'
Plugin 'vim-fugitive/vim-fugitive'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"""Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"""Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"""Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"""Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
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
" " fin Vundle

"set list
set expandtab
set softtabstop=2
set shiftwidth=2
set tabstop=2
syntax on
filetype plugin indent on
"set autoindent
" set number
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
"colorscheme apprentice
set laststatus=2
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
set wildmenu
if has("patch-7.4.710")
  set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:$,precedes:«,extends:»
else
  set listchars=tab:→\ ,nbsp:␣,trail:•,eol:$,precedes:«,extends:»
endif

"autocmd BufNewFile,BufRead *.json set ft=javascript
"autocmd BufNewFile,BufRead *.j2 set ft=javascript
"autocmd BufNewFile,BufRead *.fact set ft=javascript
autocmd BufNewFile,BufRead *.fact set ft=json

"if &diff
    "highlight! link DiffText MatchParen
"endif
"
"highlight! link DiffText Todo
"highlight DiffAdd cterm=none ctermfg=fg ctermbg=Blue gui=none guifg=fg guibg=Blue
"highlight DiffDelete cterm=none ctermfg=fg ctermbg=Blue gui=none guifg=fg guibg=Blue
"highlight DiffChange cterm=none ctermfg=fg ctermbg=Blue gui=none guifg=fg guibg=Blue
"highlight DiffText cterm=none ctermfg=bg ctermbg=White gui=none guifg=bg guibg=White
"highlight Normal term=none cterm=none ctermfg=White ctermbg=Black gui=none guifg=White guibg=Black


let g:netrw_browse_split = 4
let g:netrw_winsize = 20
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_altv = 1

"augroup ProjectDrawer
  "autocmd!
  "autocmd VimEnter * :Vexplore
"augroup END

"ansible option / https://github.com/chase/vim-ansible-yaml
"let g:ansible_options = {'ignore_blank_lines': 0}
"let g:ansible_options = {'documentation_mapping': '<C-K>'}

let g:ansible_unindent_after_newline = 1
let g:ansible_name_highlight = 'd'
let g:ansible_extra_keywords_highlight = 1

let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers

"map leader key to comma
let mapleader = ","

nmap <silent> ./ :nohlsearch<CR>
nmap HF /TABLE^M<80>klv/Object Def^M<80>kdd<CR>
nnoremap <Leader>q" ciw""<Esc>P
nnoremap <Leader>q' ciw''<Esc>P
nnoremap <Leader>qd daW"=substitute(@@,"'\\\|\"","","g")<CR>P

set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir

