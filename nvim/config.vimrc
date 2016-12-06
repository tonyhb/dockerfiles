" Settings
colorscheme molokai
let g:rehash256 = 1

let mapleader = ","

set laststatus=2
set background=dark
set encoding=utf-8
set modelines=0
set showmode
set showcmd
set visualbell
set cursorline
set cursorcolumn
set ttyfast
set ruler
set backspace=indent,eol,start
set number
set history=1000
set listchars=tab:▒░,eol:¬,extends:❯,precedes:❮
set listchars=tab:··,eol:¬,extends:❯,precedes:❮
set listchars=tab:░░,eol:¬,extends:❯,precedes:❮
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set nolist
set showbreak=↪
set shell=/bin/zsh
set lazyredraw

" disable mouse
set mouse=

noremap  <F2> :NERDTreeToggle<cr>
inoremap <F2> <esc>:NERDTreeToggle<cr>

noremap  <F3> :TagbarToggle<cr>
inoremap <F3> <esc>:TagbarToggle<cr>

" Keep things in the middle of the screen
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> g# g#zz

" Don't move on *
nnoremap * *<c-o>

" deoplete
let g:deoplete#enable_at_startup = 1

" Substitute
nnoremap <leader>s :%s//<left>

nnoremap ; :

nnoremap <leader>t :FZF<cr>

" Fuck ex mode
map Q q

" Directions --------------------------------------------------------------- {{{
noremap j gj
noremap k gk

" Buffers
noremap <C-h>  <C-w>h
noremap <C-j>  <C-w>j
noremap <C-k>  <C-w>k
noremap <C-l>  <C-w>l
noremap <leader>v <C-w>v

vnoremap < <gv
vnoremap > >gv

" Fuck you, help key.
noremap  <F1> :set invfullscreen<CR>
inoremap <F1> <ESC>:set invfullscreen<CR>a

" Fuck you too, manual key.
nnoremap K <nop>

" Stop it, hash key.
inoremap # X<BS>#

let g:syntastic_enable_signs=1

" }}}
"
" EasyMotion --------------------------------------------------------------- {{{

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" }}}

" incsearch --------------------------------------------------------------- {{{
set ignorecase

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" }}}
