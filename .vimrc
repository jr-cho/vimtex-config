let mapleader=" "
nnoremap <Space> <Nop>

set nocompatible
syntax on
filetype plugin indent on

set number
set relativenumber
set cursorline
set ruler

set wrap
set linebreak
set breakindent
set textwidth=80
set colorcolumn=81

set scrolloff=5
set sidescrolloff=5

set tabstop=2
set shiftwidth=2
set expandtab
set smartindent

set ignorecase
set smartcase
set incsearch
set hlsearch

set clipboard=unnamedplus
set hidden
set mouse=a

set nobackup
set nowritebackup
set noswapfile

call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

call plug#end()

set termguicolors
colorscheme catppuccin_mocha

hi Comment gui=italic

let g:vimtex_compiler_method = 'latexmk'

let g:vimtex_compiler_latexmk = {
      \ 'continuous' : 1,
      \ 'options' : [
      \   '-pdf',
      \   '-interaction=nonstopmode',
      \   '-synctex=1'
      \ ],
      \ }

if has('mac')
  let g:vimtex_view_method = 'skim'
elseif has('unix')
  let g:vimtex_view_method = 'zathura'
elseif has('win32') || has('win64')
  let g:vimtex_view_method = 'sumatrapdf'
endif

let g:vimtex_view_general_viewer = ''
let g:vimtex_view_general_options = '--reuse-instance'

set conceallevel=1
let g:vimtex_syntax_conceal_disable = 0

let g:vimtex_quickfix_mode = 1

augroup latex_settings
  autocmd!
  autocmd FileType tex setlocal spell
  autocmd FileType tex setlocal spelllang=en_us
  autocmd FileType tex setlocal wrap
  autocmd FileType tex setlocal linebreak
augroup END

nnoremap <leader>ll :VimtexCompile<CR>
nnoremap <leader>lv :VimtexView<CR>
nnoremap <leader>lk :VimtexStop<CR>
nnoremap <leader>lc :VimtexClean<CR>
nnoremap <leader>ls :VimtexSynctex<CR>

nnoremap j gj
nnoremap k gk

autocmd BufWritePre *.tex %s/\s\+$//e
