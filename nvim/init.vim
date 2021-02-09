call plug#begin()
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux'

Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'udalov/kotlin-vim'

Plug 'raimondi/delimitmate'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'

Plug 'mhartington/oceanic-next'
Plug 'mattn/emmet-vim', { 'for': ['javascript', 'javascript.jsx'] }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vimwiki/vimwiki'
call plug#end()

syntax enable
filetype plugin indent on
set number
set relativenumber
set ruler
set encoding=utf-8
set softtabstop=4
set shiftwidth=4
set expandtab
set ignorecase
set smartcase
set complete=.,w,b,u,t,i,k
set autoread
set wildignore=*/node_modules/*,*/build/*
set splitright
set splitbelow
set cpoptions=aABceFsI
let g:python3_host_prog="/usr/bin/python3.6"
set scrolloff=5
set noswapfile
set grepprg=rg\ --vimgrep
set mouse=a

"Mappings
inoremap jk <ESC>
let mapleader = "\<Space>"
let maplocalleader = "\<Space>"

"Move by 'display lines' rather than 'logical lines.
"When a v:count is provided, move by logical lines.
nnoremap <expr> j v:count > 0 ? 'j' : 'gj'
xnoremap <expr> j v:count > 0 ? 'j' : 'gj'
nnoremap <expr> k v:count > 0 ? 'k' : 'gk'
xnoremap <expr> k v:count > 0 ? 'k' : 'gk'

"Easier navigation between window spilts
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <Leader>v :vs<CR>
nnoremap <Leader>h :sp<CR>
nnoremap <Leader>y "+y
vmap <Leader>y "+y
nnoremap <Leader>r :so ~/.config/nvim/init.vim<CR>
nnoremap Y y$

"Indent multple times without losing visual selection
xnoremap > >gv
xnoremap < <gv

nnoremap <silent> <Leader>n :noh<CR>

"Appearance
if (has("termguicolors"))
 set termguicolors
endif
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext

"Close method preview when leaving insert mode
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"VimWiki
:map <Leader>m <Plug>VimwikiToggleListItem

"FZF
" Slå av preview vindu for FZF
let g:fzf_preview_window = []

nnoremap <silent> <C-p> :Files<cr>
nnoremap <Leader>f :Find<CR>
let g:fzf_action = {
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
"Find everything using fzf
"https://medium.com/@crashybang/supercharge-vim-with-fzf-and-ripgrep-d4661fc853d2
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
let g:fzf_layout = { 'down': '~25%' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

"Dont show buffer in fzf
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

"Nerdtree
nmap <silent> <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 20
let NERDTreeMinimalUI = 1
let NERDTreeShowLineNumbers = 0

"NerdCommenter
let g:NERDSpaceDelims = 1
