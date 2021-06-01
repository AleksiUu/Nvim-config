set exrc
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set colorcolumn=80
set signcolumn=yes

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess +=c

call plug#begin('~/.vim/plugged')

" Global file searching, grepping etc
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Theme
Plug 'gruvbox-community/gruvbox'
Plug 'phanviet/vim-monokai-pro'

" Prettier
Plug 'sbdchd/neoformat'

" Syntax Highlighting
Plug 'sheerun/vim-polyglot'

" Language server
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" File Explorer
Plug 'preservim/nerdtree'

call plug#end()

colorscheme gruvbox

let mapleader = " "
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>b :NERDTreeFocus<CR>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" C-t open file in new tab, C-x open horizontally, C-v open vertically

autocmd BufWritePre * %s/\s\+$//e
