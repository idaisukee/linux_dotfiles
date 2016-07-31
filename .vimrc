set nocompatible

set number

:set ignorecase smartcase
syntax on

" match ErrorMsg '\s\+'

set list
set listchars=tab:>-,trail:.,eol:v


" ファイルタイプ別のプラグイン/インデントを有効にする
filetype plugin indent on

noremap <C-P> :VimFiler -split <ENTER>
noremap <F11> :VimFiler <ENTER>
noremap <F2> :split <ENTER>
" nnoremap <F3> <C-W> <C-W>
map <F3> <C-w><C-w>
noremap <F10> :q <ENTER>
noremap <C-q> :bprevious <ENTER>
noremap <C-j> :bnext <ENTER>

