set nocompatible
set regexpengine=0
set number
filetype plugin indent on
set ignorecase smartcase incsearch
set mouse=a
set ic
set backspace=indent,eol,start
set noswapfile
set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set number relativenumber
let mapleader=' ' " Map leader key to be space
syntax on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Command-line mode                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Plugins                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tomtom/tcomment_vim' " {{{
	command! -range C <line1>,<line2>TComment
" }}}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree' " {{{
    nnoremap <Leader>nt :NERDTreeToggle<CR>
    nnoremap <Leader>nf :NERDTreeFind<CR>
    nnoremap <silent> <Leader>g :Rg<Space>
" }}}
Plug 'posva/vim-vue'
Plug 'junegunn/fzf.vim' " {{{
    nnoremap <silent> <Leader>f     :Files<CR>
    nnoremap <silent> <Leader>b     :Buffers<CR>
    xnoremap <silent> <Leader>rg    y:Rg <C-R>"<CR>
" }}}
Plug 'ciaranm/detectindent' " {{{
	autocmd BufReadPost * :DetectIndent
" }}}
Plug 'SirVer/ultisnips' " {{{
	Plug 'honza/vim-snippets'

	let g:snips_author='marrionluaka'
	let g:UltiSnipsEditSplit="vertical"
	let g:UltiSnipsExpandTrigger="<tab>"
	let g:UltiSnipsJumpForwardTrigger="<tab>"
	let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
	let g:UltiSnipsSnippetsDir='~/.vim/UltiSnips'
" }}}
Plug 'tomasiser/vim-code-dark'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
    nmap <Leader>gd <Plug>(coc-definition)
    nmap <Leader>gi <Plug>(coc-implementation)
    nmap <Leader>gr <Plug>(coc-references)
    nmap <Leader>gy <Plug>(coc-type-definition)
    nmap <Leader>rn <Plug>(coc-rename)
    let g:coc_global_extensions = [
		\ '@yaegassy/coc-volar',
		\ '@yaegassy/coc-volar-tools',
                \ 'coc-eslint',
                \ 'coc-css',
                \ 'coc-git',
                \ 'coc-html',
                \ 'coc-json',
                \ 'coc-prettier',
                \ 'coc-tailwindcss',
                \ 'coc-tsserver',
		\ 'coc-ultisnips',
                \]
call plug#end()
colorscheme codedark

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Defaults                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufWritePre * :%s/\s\+$//e " Delete whitespace
