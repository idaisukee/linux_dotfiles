set nocompatible

set number

:set ignorecase smartcase
syntax on

" match ErrorMsg '\s\+'

set list
set listchars=tab:>-,trail:.,eol:v

colorscheme meta5
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

if has('vim_starting')
   " 初回起動時のみruntimepathにneobundleのパスを指定する
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
   
if 1
" NeoBundleを初期化
call neobundle#begin(expand('~/.vim/bundle/'))
" インストールするプラグインをここに記述
   NeoBundle 'Shougo/vimfiler'
   NeoBundle 'Shougo/unite.vim'
   NeoBundle 'tpope/vim-fugitive'
call neobundle#end()
endif

" ファイルタイプ別のプラグイン/インデントを有効にする
filetype plugin indent on

noremap <C-P> :VimFiler -split <ENTER>
noremap <F11> :VimFiler <ENTER>
noremap <F2> :split <ENTER>
" nnoremap <F3> <C-W> <C-W>
map <F3> <C-w><C-w>
noremap <F10> :q <ENTER>

