" don't beep, use visual bell
set visualbell

" don't use vi compatibility features
set nocompatible

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Shougo/vimproc.vim'
Plugin 'idanarye/vim-vebugger'
Plugin 'tmhedberg/SimpylFold' 
" Plugin 'airblade/vim-gitgutter'
" Plugin 'tpope/vim-fugitive'
" Plugin 'Yggdroot/indentLine'
" Plugin 'nathanaelkane/vim-indent-guides'
" Plugin 'vim-syntastic/syntastic'
Plugin 'Konfekt/FastFold'

" more Plugin commands
" ...
call vundle#end()            " required
filetype plugin indent on    " required

" plugin settings
" youcompleteme
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion=1
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

"" vim-indent-guides
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_auto_colors = 0
"let g:indent_guides_guide_size = 1
"let g:indent_guides_start_level = 2
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=gray   ctermbg=0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgray ctermbg=8

" vim-vebugger
set showcmd
let g:vebugger_leader = "\\"
command PDB VBGstartPDB %
command PEX VimProcBang python3 %

" syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0
" let g:syntastic_always_populate_loc_list = 1

" backspace across environments
set backspace=indent,eol,start
map!  <BS>

syntax enable
" enable mouse usage in all scenarios (incl tmux)
set mouse=a

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" uncomment to shorten tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set autoindent
set smartindent

set number
set hlsearch
set incsearch

" Keep search pattern at the center of the screen
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz

color delek
highlight Search ctermfg=black ctermbg=yellow

set colorcolumn=110
highlight ColorColumn ctermbg=4

set listchars=trail:_,extends:>,precedes:<,nbsp:~
" SimPylFold and original folding
set foldmethod=syntax
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview


" copy to attached terminal using the yank(1) script:
" https://github.com/sunaku/home/blob/master/bin/yank
function! Yank(text) abort
  let escape = system('yank', a:text)
  if v:shell_error
    echoerr escape
  else
    call writefile([escape], '/dev/tty', 'b')
  endif
endfunction
noremap <silent> <Leader>y y:<C-U>call Yank(@0)<CR>
