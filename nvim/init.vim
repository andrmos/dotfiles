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
Plug 'alvan/vim-closetag'
Plug 'scrooloose/nerdcommenter'
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mhartington/oceanic-next'
call plug#end()

syntax on
filetype plugin indent on
set number
set relativenumber
set ruler
set encoding=utf-8
" set autoindent
set softtabstop=2
set shiftwidth=2
set expandtab
set ignorecase
set smartcase
set complete=.,w,b,u,t,i,kspell
set autoread
set wildignore=*/node_modules/*
set splitright
set splitbelow

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
nnoremap <Leader>c :q<CR>
nnoremap <Leader>y "+y
vmap <Leader>y "+y
nnoremap <Leader>r :so ~/.config/nvim/init.vim<CR>

"Appearance
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" if (has("termguicolors"))
 " set termguicolors
" endif
set background=dark
" colorscheme OceanicNext
colorscheme solarized
highlight LineNr ctermfg=darkgrey
highlight clear SignColumn
highlight clear LineNr
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=1


"Close method preview on cursor move in insert mode
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"Close method preview when leaving insert mode
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"React
let g:jsx_ext_required = 0
let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.js'

"Deoplete
let g:deoplete#enable_at_startup = 1

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
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'

let g:vimtex_compiler_latexmk = {
\   'build_dir' : '../build',	
\}

let g:vimtex_latexmk_progname = '/home/andre/.local/bin/nvr'
let g:vimtex_quickfix_latexlog = {'fix_paths' : 0}

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
