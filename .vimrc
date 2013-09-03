"""""""""""""""""general"""""""""""""""""""""""""""""""""""""""""""""
syntax on

set showmatch
set matchtime=2
set nowrap

filetype indent on
filetype plugin on

""""""""encoding setting by system
let os = substitute(system('uname'),"\n","","")
if os == "FreeBSD"
	set fileencodings=iso-2022-jp,euc-jp,cp932,ucs-bom,utf-8,default,latin1
else
	set encoding=utf-8
endif
"""""""""""""""""""""""""""""""

set tabstop=2 shiftwidth=2 softtabstop=2
set ruler
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
au BufNewFile,BufRead *.spec set filetype=ruby
set background=dark
colorscheme default 
set number
set nobackup       
set nowritebackup  
set noswapfile     
set fdm=syntax
set statusline=%<%F\ %h%w%m%r%y%=L:%l/%L\ (%p%%)\ C:%c%V\ B:%o\ F:%{foldlevel('.')} 
set laststatus=2
set autochdir
let g:session_autosave = 'no'
set complete-=i
set complete-=d
set incsearch	"highlignt found word when typing
set hlsearch

"""""""""""""""mapping
vmap <S-j><S-j> <Esc>
imap <S-j><S-j> <Esc>
map <S-j><S-j> <Esc>

"imap <C-k> <Up>
"imap <C-j> <Down>
"imap <C-l> <Right>
"imap <C-h> <Left>

map <S-k> <C-w><Up>
map <S-j> <C-w><Down>
map <S-l> <C-w><Right>
map <S-h> <C-w><Left>

map <S-b> :tabnext<CR>
map <S-b> :tabnext<CR>
map <S-h> :tabprevious<CR>
map <S-l> :tabnext<CR>

map <S-o><S-o> :tabnew .<CR> :lcd %:p:h<CR> :pwd<CR>
map <S-q><S-q> :q<CR>
map <C-j> <C-w>x

"speed scroll
nnoremap <C-j> 7j 
nnoremap <C-k> 7k 
nnoremap <C-h> 7h 
nnoremap <C-l> 7l
vnoremap <C-j> 7j 
vnoremap <C-k> 7k 
vnoremap <C-h> 7h 
vnoremap <C-l> 7l 
" zoom win
nnoremap _ :ZoomWin <CR>

"UU to up dir
map <S-u><S-u> :cd ../<CR>:pwd<CR>



""""""""""""< > de indent"""""""""""""""""""""""""""""
vnoremap < <gv
vnoremap > >gv

""""""""""""""""color""""""""""""""""
hi cursorLine cterm=NONE gui=NONE
hi Folded  ctermbg=darkgreen  ctermfg=yellow
hi Pmenu ctermbg=yellow ctermfg=black
hi PmenuSel ctermbg=green ctermfg=yellow
hi Comment ctermfg=cyan
hi Visual ctermbg=yellow
hi Visual ctermfg=black
hi DiffChange ctermbg=red
hi DiffText term=reverse ctermbg=yellow ctermfg=black

hi Directory ctermfg=cyan
hi LineNr  ctermfg=darkgray
hi Statement ctermfg=darkcyan
hi Type ctermfg=blue
hi Special ctermfg=brown
hi Statusline ctermbg=black ctermfg=yellow
hi Search ctermbg=cyan

""""""""""""""""""""tohtml option""""""""""""""""""""
let html_use_css=1
let html_number_lines=0
let html_no_pre=0


""""""""""""""""""""""""php syntax """""""""""""""""""""""""
let php_folding = 1
autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete


""""""skk
let skk_jisyo = '~/.skk-jisyo'
let skk_large_jisyo = '/usr/local/share/skk/SKK-JISYO.L'
let skk_auto_save_jisyo = 1
let skk_egg_like_newline = 1
let skk_show_annotation = 1
let skk_use_face = 1


"""""""""""NeoBundle
filetype off 

if has('vim_starting')
   set runtimepath+=~/.vim/neobundle.vim.git
   call neobundle#rc(expand('~/.vim/.bundle'))
endif
 
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'thinca/vim-ref'
NeoBundle 'xolox/vim-session'
NeoBundle 'mattn/zencoding-vim'
NeoBundle 'tomtom/tlib_vim.git'
NeoBundle 'MarcWeber/vim-addon-mw-utils.git'
NeoBundle 'honza/snipmate-snippets.git'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'vim-scripts/AutoComplPop'
NeoBundle 'rosenfeld/rgrep.vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'tpope/vim-surround'
"NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-ragtag'
NeoBundle 'h1mesuke/unite-outline'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'tyru/skk.vim'
NeoBundle 'vim-scripts/TwitVim'
NeoBundle 'vim-scripts/ZoomWin'

NeoBundle 'SpeedGrep'

filetype indent on
filetype plugin on

