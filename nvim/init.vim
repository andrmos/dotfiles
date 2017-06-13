"Vim plugins
call plug#begin()
Plug 'altercation/vim-colors-solarized' "Solarized plugin
Plug 'lervag/vimtex'			"Latex plugin
Plug 'scrooloose/nerdtree'		"Nerdtree file browser plugin
Plug 'sirver/ultisnips'			"Snippets plugin
Plug 'christoomey/vim-tmux-navigator'	"Navigate panes in tmux
Plug 'tmux-plugins/vim-tmux'		"Tmux syntax highlighting
Plug 'kien/ctrlp.vim'			"Fuzzy finding
"Plug 'pangloss/vim-javascript'		"Javascript highlighinn
"Plug 'mxw/vim-jsx'			"Jsx (react) highlighting
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'raimondi/delimitmate'		"Autoclose matching brackets
Plug 'tpope/vim-surround'		
Plug 'valloric/youcompleteme'		"Autocompletion
Plug 'alvan/vim-closetag'
call plug#end()

set number 				"Enable line numbers
set relativenumber			"Use relative line numbers
filetype plugin indent on 		"Enable filetype recognition
syntax on 				"Enable syntax highlighting
set encoding=utf-8 			"Set utf-8 encoding
set autoindent				"Use same indentation as last line
set softtabstop=4			"Use 4 spaces as tab
set shiftwidth=4			"Amount of spaces used when autoindenting
set expandtab
set ruler				"Show ruler in bottom right corner
set ignorecase				"Ignore case when searching
set smartcase				"Override ignorecase when searching with case
set complete=.,w,b,u,t,i,kspell		"Improve completion. (All is default except kspell)
"Support for py3 autoccompletion
let g:ycm_python_binary_path = '/usr/bin/python3'
"Close method preview on cursor move in insert mode
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"Close method preview when leaving insert mode
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

let g:jsx_ext_required = 0
let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.js'

inoremap jk <ESC>			"Map esc to jk
let mapleader = "\<Space>"		"Space is leader button
let maplocalleader = "\<Space>"		"Space is also local leader button

" Move by 'display lines' rather than 'logical lines.
" When a v:count is provided, move by logical lines.
nnoremap <expr> j v:count > 0 ? 'j' : 'gj'
xnoremap <expr> j v:count > 0 ? 'j' : 'gj'
nnoremap <expr> k v:count > 0 ? 'k' : 'gk'
xnoremap <expr> k v:count > 0 ? 'k' : 'gk'

nnoremap <C-J> <C-W><C-J>		"Easier navigation between window spilts
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Nerdtree
nmap <C-n> :NERDTreeToggle<CR>		"Toggle file browser
let g:NERDTreeWinSize = 20		"Set size of file browser

"Appearance
colorscheme solarized			"Set solarized color scheme
set background=dark			"Set dark background color

" Add ; to end of line
inoremap <A-Enter> <ESC>A;<ESC>

"Latex
let g:tex_flavor = 'latex'		"Handle .tex files with latex
let g:vimtex_view_method = 'zathura'	"View pdf in Zathura

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
