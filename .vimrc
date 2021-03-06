set nocompatible
filetype off

set nu
" set foldcolumn=1
set softtabstop=2
set shiftwidth=2
set expandtab
set nowrap
set go+=b
" add a visual guide line at the 80th column
" set textwidth=80
" set colorcolumn=+1
" hi ColorColumn guibg=#eeeeee ctermbg=246

syntax on
colorscheme hemisu
" set transparency=15
set background=dark

set guifont=SauceCodePowerline-Regular:h13

" Key mappings
"
" \s    - Replace all instances of the word under the cursor
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>

" Vundle
"
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
filetype plugin indent on
"
" End Vundle

Bundle 'jelera/vim-javascript-syntax'
" au FileType javascript call JavaScriptFold()

Bundle 'pangloss/vim-javascript'

Bundle 'nathanaelkane/vim-indent-guides'

Bundle 'Raimondi/delimitMate'
imap <C-c> <CR><Esc>O " Will map Ctrl+C whilst still within insert mode to the line splitting command.

Bundle 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR> " Toggle NERDTree with F2
let g:NERDTreeWinPos = "left"
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

Bundle 'scrooloose/syntastic'
" This does what it says on the tin. It will check your file on open too, not just on save.
" You might not want this, so just leave it out if you don't.
let g:syntastic_check_on_open = 1
" tell syntastic to use gjslint for checking JavaScript's syntax
let g:syntastic_javascript_checkers = ['gjslint --nojsdoc']
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'

Bundle 'Valloric/YouCompleteMe'
" These are the tweaks I apply to YCM's config, you don't need them but they might help.
" YCM gives you popups and splits by default that some people might not like, so these should tidy it up a bit for you.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

Bundle 'airblade/vim-gitgutter'

Bundle 'bling/vim-airline'
let g:airline_powerline_fonts = 1
set laststatus=2

Bundle 'marijnh/tern_for_vim'

Bundle 'othree/javascript-libraries-syntax.vim'
let g:used_javascript_libs = 'jquery'

Bundle 'tyok/nerdtree-ack'

Bundle 'mileszs/ack.vim'

Bundle 'tpope/vim-fugitive'
