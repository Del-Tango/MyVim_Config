" PLUGS
"
call plug#begin('~/.config/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'davidhalter/jedi-vim'
Plug 'zchee/deoplete-jedi'
Plug 'jiangmiao/auto-pairs'
Plug 'sbdchd/neoformat'
Plug 'neomake/neomake'
Plug 'terryma/vim-multiple-cursors'
Plug 'tmhedberg/SimpylFold'
Plug 'machakann/vim-highlightedyank'
" A fuzzy file finder
Plug 'kien/ctrlp.vim'
" Comment/Uncomment tool
Plug 'scrooloose/nerdcommenter'
" Switch to the begining and the end of a block by pressing %
Plug 'tmhedberg/matchit'
" A Tree-like side bar for better navigation
Plug 'scrooloose/nerdtree'
" A cool status bar
Plug 'vim-airline/vim-airline'
" Airline themes
Plug 'vim-airline/vim-airline-themes'
" Nord
Plug 'arcticicestudio/nord-vim'
" Better syntax-highlighting for filetypes in vim
Plug 'sheerun/vim-polyglot'
" Intellisense engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Git integration
Plug 'tpope/vim-fugitive'
" Auto-close braces and scopes
Plug 'jiangmiao/auto-pairs'

call plug#end()

" Yank Highlighter
"
" hi HighlightedyankRegion cterm=reverse gui=reverse
" set highlight duration time to 1000 ms, i.e., 1 second
let g:highlightedyank_highlight_duration = 1000

" NORD
"
filetype plugin indent on
syntax on
"colorscheme nord

" NERD TREE
"
nnoremap <C-n> :NERDTreeToggle<CR>
" Position window to the right side
let g:NERDTreeWinPos = "right"
" Show hidden files in NerdTree buffer.
let NERDTreeShowHidden=1
" Auto-open NERDTree when Neovim starts without a file or directory
" autocmd vimenter * if !argc() | NERDTree | endif
" Auto-open NERDTree when Neovim starts
autocmd vimenter * NERDTree
" Close Neovim if NERDTree is the Last Window: Add this to avoid having an empty Neovim session when you close NERDTree:
autocmd bufenter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" JEDI
"
" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0
" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

" Deoplete
"
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" AirLine Themes
"
let g:airline_theme='system' " <theme> is a valid theme name

" Miscellaneous
"
" Enable alignment
let g:neoformat_basic_format_align = 1
" Enable tab to space conversion
let g:neoformat_basic_format_retab = 1
" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1
" Enable line numbers
set number
" Enable relative line numbers (optional)
" set relativenumber

