call plug#begin()
Plug 'altercation/vim-colors-solarized'
Plug 'lervag/vimtex'
Plug 'scrooloose/nerdtree'
Plug 'sirver/ultisnips'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux'
Plug 'kien/ctrlp.vim'
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mhartington/oceanic-next'
Plug 'dkprice/vim-easygrep'
Plug 'mattn/emmet-vim'
call plug#end()

syntax on
filetype plugin indent on
set number
set relativenumber
set ruler
set encoding=utf-8
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set ignorecase
set smartcase
set complete=.,w,b,u,t,i,kspell
set autoread
set wildignore=*/node_modules/*,*/build/*
set splitright
set splitbelow
set cpoptions=aABceFsI
let g:python3_host_prog="/usr/bin/python3.6"
set scrolloff=5
set noswapfile

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
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
set mouse=a

nnoremap <Leader>v :vs<CR>
nnoremap <Leader>h :sp<CR>
nnoremap <Leader>c :q<CR>
nnoremap <Leader>y "+y
vmap <Leader>y "+y
nnoremap <Leader>r :so ~/.config/nvim/init.vim<CR>
nnoremap Y y$

"Appearance
if (has("termguicolors"))
 set termguicolors
endif
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext

"Close method preview when leaving insert mode
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

let g:user_emmet_leader_key='<C-e>'

"CtrlP
" let g:ctrlp_mruf_relative = 1
" let g:ctrlp_cmd = "CtrlPMRU"
let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
let g:ctrlp_use_caching = 0

"React
let g:jsx_ext_required = 0
let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.js'
autocmd FileType javascript set softtabstop=2
autocmd FileType javascript set shiftwidth=2

"Deoplete
"Enable deoplete when InsertEnter.
let g:deoplete#enable_at_startup = 0
autocmd InsertEnter * call deoplete#enable()
if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {}
endif
let g:deoplete#omni#input_patterns.tex = g:vimtex#re#deoplete

"Nerdtree
nmap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 20

"NerdCommenter
let g:NERDSpaceDelims = 1

"ALE lint
let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'
let g:ale_fixers = {
  \ 'javascript': ['eslint']
  \ }
nmap <Leader>f <Plug>(ale_fix)

"Latex
autocmd FileType tex set spell
autocmd FileType tex set linebreak

let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'

let g:vimtex_compiler_latexmk = {
\   'build_dir' : '../build',	
\}

let g:vimtex_latexmk_progname = '/home/andre/.local/bin/nvr'
let g:vimtex_quickfix_latexlog = {'fix_paths' : 0}

"Move to {} and change inside the brackets
nnoremap c{ f{ci{


"UltiSnips
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<C-b>"
let g:UltiSnipsJumpBackwardTrigger = "<C-z>"
let g:UltiSnipsSnippetsDir = '~/.config/nvim/ultisnips'
let g:UltiSnipsSnippetDirectories = ["ultisnips"]
let g:UltiSnipsEditSplit = 'horizontal'

"Abbreviations
ab exmaple example
ab techonology technology
ab techonoloy technology
ab techonolgy technology
