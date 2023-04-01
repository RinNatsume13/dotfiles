:set number 
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set clipboard+=unnamedplus

autocmd BufNewFile,BufRead *.qmd set filetype=markdown



" autocmd FileType markdown setl coc_filetype=tex
" let g:coc_filetype_blacklist = {
"     \ 'markdown': 1,
"     \ }

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
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors (This is out dated)
" Look into https://github.com/mg979/vim-visual-multi for multi cursors

Plug 'vim-latex/vim-latex'


" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Plug 'jackguo380/vim-lsp-cxx-highlight' " C++ highlight

" Tab
Plug 'nvim-tree/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'


Plug 'jiangmiao/auto-pairs'

Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'matze/vim-move'

" Plug 'jmbuhr/otter.nvim'

set encoding=UTF-8


call plug#end()


colorscheme tokyonight

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

" Pin/unpin buffer
" nnoremap <silent>    <A-;> <Cmd>BufferPin<CR>

" Close buffer
nnoremap <silent>    <A-c> <Cmd>BufferClose<CR>


" <Tab>: completion
" inoremap <silent><expr> <Tab>
"     \ pumvisible() ? "\<C-N>" :
"     \ s:check_back_space() ? "\<Tab>" :
"     \ coc#refresh()
" " <S-Tab>: completion back
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-P>" : "\<C-H>"
" <CR>: confirm completion, or insert <CR>
" inoremap <expr> <CR> pumvisible() ? "\<C-c>" : "\<CR>"

inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~ '\s'
endfunction
