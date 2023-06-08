set nocompatible
set regexpengine=0
set number
set ignorecase smartcase incsearch
set mouse=a
set ic
set noswapfile
set autoindent
set tabstop=2
let mapleader=' ' " Map leader key to be space
syntax on
filetype plugin indent on
call plug#begin()
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree' " {{{
    nnoremap <Leader>nt :NERDTreeToggle<CR>
    nnoremap <Leader>nf :NERDTreeFind<CR>
" }}}
Plug 'posva/vim-vue'
Plug 'junegunn/fzf.vim' " {{{
    nnoremap <silent> <Leader>f     :Files<CR>
" }}}
Plug 'tomasiser/vim-code-dark'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
    nmap <Leader>gd <Plug>(coc-definition)
    nmap <Leader>gi <Plug>(coc-implementation)
    nmap <Leader>gr <Plug>(coc-references)
    nmap <Leader>gy <Plug>(coc-type-definition)
    nmap <Leader>rn <Plug>(coc-rename)
    let g:coc_global_extensions = [
                \ 'coc-css',
                \ 'coc-eslint',
                \ 'coc-git',
                \ 'coc-html',
                \ 'coc-json',
                \ 'coc-prettier',
                \ 'coc-tailwindcss',
                \ 'coc-tsserver',
                \ 'coc-vetur'
                \]
call plug#end()
colorscheme codedark
