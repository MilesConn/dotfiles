" enables syntax highlighting once and preserves color scheme
if !exists("g:syntax_on")
    syntax enable
endif

" maps leader to space
let mapleader=" " 
" maps write to leader w
nnoremap <leader>w :w<CR>

" useful for git pull and buffers
set autoread
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent 
set nonu
set relativenumber
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

call plug#begin('~/.vim/plugged')
    Plug 'mbbill/undotree'
    Plug 'git@github.com:Valloric/YouCompleteMe.git'
    Plug 'zacanger/angr.vim'
    Plug 'lervag/vimtex'
call plug#end()

set background=dark
color angr

" makes sudo write a thing 
cmap w!! %!sudo tee > /dev/null

" controls windows switching better
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

" sets tab completion for vim
set wildmode=longest,list,full
set wildmenu

" forces tmux to use 256 color
set t_Co=256

autocmd BufRead,BufNewFile *.md setlocal fo-=l textwidth=80

" vim latex config
let g:tex_flavor='pdflatex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:vimtex_latexmk_options='main.tex -pdf'
"set conceallevel=1
"let g:tex_conceal='abdmg'


" adds spelling
function SetSpellOn()
	let b:jcw_spell_on = 1
	setlocal spell spelllang=en_us
endfunction

" sets xelatex fo rlatex documents
command Xetex !xelatex %
" Set make program to latexmk for latex programs
au FileType tex setlocal makeprg='latexmk' 

" Enable spelling by default on some file types.
au FileType tex,markdown :call SetSpellOn()


" Map <leader>lm to make:
nnoremap <leader>lm :make<CR>

" tmep work around to making latex in vim


" This is to make sure VIM is always centered on the current directory rather
" than the home directory.
setlocal autochdir


