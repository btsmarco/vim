syntax on
imap jj <Esc>
imap ll <Esc>la
imap hh <Esc>ha
set nu
set cindent
set tabstop=4
set shiftwidth=4
set viminfo='100,f1
filetype on
let Tlist_WinWidth = 0
map <F4> :TlistToggle <cr>
nmap n i<Space><Esc>r
nmap s b
nmap f w
nmap m a<Space><Esc>r
nmap c o<Esc>
set foldenable
set foldmethod=syntax
set foldmethod=indent
au BufRead,BufNewFile *.t set filetype=cpp
nmap b za
nmap t zR
set showcmd         " display incomplete commands
"set hlsearch        " highlight searches
set nostartofline   " don't jump to first character when paging
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
set wildmode=longest:full
set wildmenu
"No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
"Map auto complete of (, ", ', [
inoremap {  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap "      ""<Left>
inoremap '      ''<Left>
inoremap [      []<Left>
inoremap (      ()<Left>
noremap ()     ()
noremap w :w<Enter>
noremap wq :wq<Enter>
call pathogen#infect()
execute pathogen#infect()
:nmap \e :NERDTreeToggle<CR>
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
  endif
nmap j gj
nmap k gk
autocmd vimenter * NERDTree
let g:NERDTreeDirArrows=0
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
