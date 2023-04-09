:set number 
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set clipboard+=unnamedplus
:set formatoptions+=q

" autocmd BufNewFile,BufRead *.qmd set filetype=markdown


call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'vim-latex/vim-latex'
Plug 'folke/tokyonight.nvim'
Plug 'Chiel92/vim-autoformat'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors (This is out dated)
" Look into https://github.com/mg979/vim-visual-multi for multi cursors

Plug 'EdenEast/nightfox.nvim' 
Plug 'navarasu/onedark.nvim'
Plug 'sainnhe/sonokai'
Plug 'tribela/vim-transparent'
Plug 'vim-airline/vim-airline-themes'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'


" Tab'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'


Plug 'jiangmiao/auto-pairs'

Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'matze/vim-move'


set encoding=UTF-8


call plug#end()

let g:tokyonight_colors = { 'line_number': 'black', 'cursorline_number': 'black' }
" colorscheme tokyonight
" colorscheme tokyonight-night
" colorscheme tokyonight-storm
" colorscheme tokyonight-day
" colorscheme tokyonight-moon
colorscheme nightfox
" colorscheme sonokai 
" colorscheme onedark

let g:airline#extensions#tabline#enabled = 2
let g:airline_powerline_fonts = 1

let g:airline_theme='luna'


highlight Normal guibg=rgba:0,0,0,0.5
" autocmd FileType nerdtree highlight NERDTree guibg=rgba:0,0,0,0.5


nnoremap <C-f> :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <F8> :TagbarToggle<CR>

" Allow using Tab for Auto-Completion
" inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>  

" inoremap <expr> <Enter> pumvisible() ? coc#_select_confirm() : "<Enter>  
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>:Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Moving Topbar
nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>


" Close buffer
nnoremap <silent>    <A-c> <Cmd>BufferClose<CR>



" Use <CR> to select a completion item.
" inoremap <expr> <Tab> pumvisible() ? "\<C-y>" : "\<cr>"
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~ '\s'
endfunction
