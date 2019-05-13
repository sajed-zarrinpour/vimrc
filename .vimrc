"to learn about customizing vim
"go to 
"https://www.ibm.com/developerworks/aix/library/au-customize_vi/index.html
"for tutor
"=======line number====
set number
"======tabing====
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
filetype on
filetype plugin on
filetype plugin indent on
set autoindent
set textwidth=80

"==============cruser position
set ruler 
set number 
set relativenumber
""------------------------------------------
set undofile
set undodir="$home/.VIM_UNDO_FILES"

" "---remember courser position in vimstart of file---
" autocmd BufReadPost *
" | | | | | |\ if line("'\"") > 0 && line("'\"") <= line("$") |
" | | | | | |\   exe "normal! g'\"" |
" | | | | | |\ endif
" | | | | | |" center buffer around curser when opening files "
" autocmd BufRead * normal zz

"============so you know what mode you are in
set showmode 

"=================WordProccesor mode--text editor for normal text
"=================use like :WP
func! WordProcessorMode()
 setlocal textwidth=8
 setlocal smartindent
 setlocal spell spelllang=en_us
 setlocal noexpandtab
endfu

com! WP call WordProcessorMode()


"==============add plugins inside vundle#begin...#end
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
"==============js plugins==============
Plugin 'othree/yajs.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'burnettk/vim-angular'
"================theme==================
"https://github.com/mhartington/oceanic-next
Plugin 'mhartington/oceanic-next'
Plugin 'Yggdroot/indentLine'
Plugin 'Raimondi/delimitMate'
Plugin 'valloric/MatchTagAlways'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"
Plugin 'szorfein/fromthehell.vim'
Plugin 'ntk148v/vim-horizon'
Plugin 'yous/vim-open-color'
Plugin 'kadekillary/subtle_solo'
Plugin 'edouardp/myob-colorscheme'
Plugin 'nightsense/strawberry'
Plugin 'nightsense/wonka'
Plugin 'rakr/vim-one'
"Plugin 'joshdick/onedark'
Plugin 'gosukiwi/vim-atom-dark'
"

"check the gitpage for tuto. or :help surround
Plugin 'tpope/vim-surround'
Plugin 'tomtom/tcomment_vim'
Bundle 'https://github.com/gorodinskiy/vim-coloresque.git'
"this is a nice one
Plugin 'mattn/emmet-vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'terryma/vim-multiple-cursors'
" ===============snippe
" https://github.com/garbas/vim-snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Optional:
Plugin 'honza/vim-snippets'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'L9'
"===========Ack search
"https://github.com/mileszs/ack.vim
Plugin 'mileszs/ack.vim'
"==================================================
Plugin 'valloric/youcompleteme'
Plugin 'tpope/vim-fugitive'
"Bundle 'Shougo/vimproc'
Plugin 'Shougo/vimproc.vim'
Bundle 'Shougo/unite.vim'
Bundle 'm2mdas/phpcomplete-extended'
Bundle 'm2mdas/phpcomplete-extended-laravel'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'algotech/ultisnips-php'
Plugin 'sunzhongwei/vim-laravel-snippets'
"Plugin 'honza/php-laravel-snippets'

"mini map for vim
Plugin 'severin-lemaignan/vim-minimap'

"addin C/C++ support
Plugin 'WolfgangMehner/c-support'
"clang compeletation 
Plugin 'rip-rip/clang_complete'
"switching between .h and .cpp files
Plugin 'A.vim'

"history management of yank command 
Plugin 'YankRing.vim'
"class outline viewer
Plugin 'majutsushi/tagbar'
Plugin 'taglist.vim'
"a undo tree!
Plugin 'mbbill/undotree'
"spreedshits for vim :
Plugin 'dhruvasagar/vim-table-mode'
"jump to Defenition with help of quicfix page :
Plugin 'misterbuckley/vim-definitive'
"working with python virtual env 
"doc at : https://vimawesome.com/plugin/virtualenv-vim
Plugin 'jmcantrell/vim-virtualenv'
"syntax checking, docs at : https://vimawesome.com/plugin/syntastic
Plugin 'scrooloose/syntastic'
"terminal window wrapper in vim?
"doc at : https://vimawesome.com/plugin/conque-shell
Plugin 'Conque-Shell'
"commenting
Plugin 'scrooloose/nerdcommenter'
"vim task manager : https://vimawesome.com/plugin/vim-tasks
Plugin 'irrationalistic/vim-tasks'
"to manage the buffers :
"Plugin 'fholgado/minibufexpl.vim'

"webAPI client for vim :https://vimawesome.com/plugin/webapi-vim 
Plugin 'mattn/webapi-vim'
call vundle#end()
"======================
set incsearch                   " do incremental searching
set hlsearch                     "highlight search term
set ignorecase                 " case insensitive search
set showmatch                  " show matching parenthesis
syntax on                      " enable syntax highlighting

"========================key mappings=============
"====use ctrl+f to toggle nerdtree
map <C-f>     :NERDTreeToggle<CR>
let NERDRreeShowHidden=1

"=====put text before the cruser
" switch p and P
"==============
 noremap p P
 noremap P p
 noremap o O
 noremap O o
 noremap J 5j
 noremap K 5k
 noremap H ^
 noremap L g_

 "making ; do the work of : saving a keystroke
 nnoremap ; :
 vnoremap <C-/> :Tcomment<CR>
 map <esc> :noh<CR>


 " WINDOW MANAGEMENT
 "  ====press <shift>+'|'  for <vsplit> 
 "
 "  === '-' for <split>
 "
 "  <ctrl>+'c' for closing the buffer
 "
 "  <tab> for moving dorward
 "
 "  <shift>+<tab> for backward======
 "
  map <Bar>   <C-W>v<C-W><Right>
  map -       <C-W>s<C-W><Down>
  map <Tab>   <C-W>w
  map <Esc>[Z <C-W>
  map <C-c>   <C-W>c

  "===========================================
    " QUICK SAVE
     " ====
     " Save = <ctrl> + 's'
     
     " Quit = <ctrl> + 'q'
     " ======
     noremap  <C-s> :wa<CR>
     inoremap <C-s> <Esc>:wa<CR>
     noremap  <C-q> :wqa<CR>
     inoremap <C-q> <Esc>:wqa<CR>
     
"=============undo=========================
"<leader> + 'u'  or <winkey> + 'u'
"exiting terminal in nvim mode ---Esc---
"   tnoremap <Esc> <C-\><C-n>
    
"using ctrl + T to enter terminal mode
    noremap <C-t> :terminal<CR>
    inoremap <C-t> <Esc>:terminal<CR>

"=============CTRL +P ======fuzzy search=========    
set runtimepath^=~/.vim/bundle/ctrlp.vim
"=====================theme configuration ============
if (has("termguicolors"))
 set termguicolors
endif
" Theme
syntax enable
colorscheme OceanicNext
"highlight the currnet line number
hi CursorLineNR guifg=#ffffff
"highlight bad words in red
hi SpellBad Guibg=red guifg=#ffffff
"Oceanicnext theme vim-airline
"let g:airline_theme='oceanicnext'

"============font configs
set encoding=utf8
"=====================indentLine configuration===========
let g:indentLine_char = '|'
let g:indentLine_setColors = 0

"===================fzf config=============
map <C-p> :FZF<CR>
tmap <c-p>  <C-\><C-n>:FZF<CR>
map <C-a>a :Ag<CR>
tmap <C-a>a <C-\><C-n>:Ag<CR>
map <C-h>h :History<CR>
tmap <C-h>h <C-\><C-n>:History<CR>
map <C-l>l :Lines<CR>


" "====================================
 let g:airline#extensions#tabline#enabled = 1
 set hidden
 let g:airline#extensions#tabline#namemod =':t'
 let g:airline#extensions#tabline#show_tab_nr = 1
"" let g:airline_powerline_fonts = 1
 "let g:airline_theme = "oceanicnext"
"this makes a tab close and move to pre. buffer
"install Sayonara
"  cnoreabbrev <expr> x getcmdtype() == ":" && getcmdline() == 'x' ? 'Sayonara' : 'x'
"  "moving between buffers
"  "move to next buffer
"  nmap <C-7> :bn<CR>
"  tmap <C-7> <C-\><C-n>:bn<CR>
"  "move to previous buffer
"  nmap <C-8> :bp<Cr>
"  tmap <C-8> <C-\><C-n>:bp<Cr>
"  let g:airline#extensions#tabline#buffer_idx_mode = 1
"
"  tmap <C-1> <C-\><C-n><Plug>AirlineSelectTab1
"  tmap <C-2> <C-\><C-n><Plug>AirlineSelectTab2
"  tmap <C-3> <C-\><C-n><Plug>AirlineSelectTab3
"  tmap <C-4> <C-\><C-n><Plug>AirlineSelectTab4
"  tmap <C-5> <C-\><C-n><Plug>AirlineSelectTab5
"  tmap <C-6> <C-\><C-n><Plug>AirlineSelectTab6
"
"  nmap <C-1> <Plug>AirlineSelectTab1
"  nmap <C-2> <Plug>AirlineSelectTab2
"  nmap <C-3> <Plug>AirlineSelectTab3
"  nmap <C-4> <Plug>AirlineSelectTab4
"  nmap <C-5> <Plug>AirlineSelectTab5
"  nmap <C-6> <Plug>AirlineSelectTab6


"syntax on
"colorscheme onedark
colorscheme evening

let g:airline_theme='dark'
"enabling auto compeletion
"filetype plugin on


let g:ycm_server_python_interpreter = '/usr/bin/python'
"set diagnostics display features off, since it would 
"dissable the syntax checker plugin, syntastic for C like files.
let g:ycm_show_diagnostics_ui = 0
autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"


au FileType php setl ofu=phpcomplete#CompletePHP
"au FileType ruby,eruby setl ofu=rubycomplete#Complete
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType c setl ofu=ccomplete#CompleteCpp
au FileType css setl ofu=csscomplete#CompleteCSS
" FreeFem++ 
au BufNewFile,BufRead *.edp			setf edp
"setting blade file type for auto compeletation on blade syntax
au BufNewFile,BufRead *.blade.php set filetype=blade.php


function! CleverTab()
  if pumvisible()
    return "\<C-N>"
  endif
  if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
    return "\<Tab>"
  elseif exists('&omnifunc') && &omnifunc != ''
    return "\<C-X>\<C-O>"
  else
    return "\<C-N>"
  endif
endfunction
"tab compeletation behavior
inoremap <Tab> <C-R>=CleverTab()<CR>

"set the color of compeletation pop up menu
:highlight Pmenu guifg=yellow gui=bold
"set the behavior of omni compeletation to narrow down the query
:set completeopt+=longest

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="`"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:minimap_toggle='<leader>gt'
let g:minimap_update='<leader>mu'
let g:minimap_highlight='Visual'

"to enable the tools for cmake 
let  g:C_UseTool_cmake    = 'yes'
"let  g:C_UseTool_doxygen = 'yes'
"hot key customization for c-support plugin
"save and compile
  noremap   \rc        :rc<CR>
 inoremap   \rc   <C-C>:rc<CR>

"key bind for toggling the class viewer
nmap <F8> :TagbarToggle<CR>
nnoremap <F12> :UndotreeToggle<cr>

"========================table mode settings========================
"Demo on : https://www.youtube.com/watch?v=9lVQ0VJY3ps
"Doc  on : https://vimawesome.com/plugin/table-mode
let g:table_mode_corner='|'
let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='
"======================syntax checikng settings=====================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers = ['php']
"let g:syntastic_c_checkers = ['clang_check', 'clang_tidy', 'gcc']
"let g:syntastic_cpp_checkers = ['clang_check', 'clang_tidy', 'gcc', 'g++']
"let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
"======================conque term settings========================
"map Terminal ConqueTermSplit bash
"=====================nerd commenter===============================
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
"===============================clang_compelete========================
 " or path directly to the library file
 let g:clang_library_path='/usr/lib64/libclang.so.8'
"===============================minibufexpl=============================
"https://vimawesome.com/plugin/minibufexpl-vim
" MiniBufExpl Colors
"hi MBENormal               guifg=#808080 guibg=fg
"hi MBEChanged              guifg=#CD5907 guibg=fg
"hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
"hi MBEVisibleChanged       guifg=#F1266F guibg=fg
"hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg
"hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg
"some settings
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1

"===============================TIPS====================================
"a little tip :
"use command "+yy to copy current line into the system clipboard from vim
"and command "+p to paste the content of the clipboard into vim
"watch :https://www.youtube.com/watch?v=XA2WjJbmmoM for more tips 
