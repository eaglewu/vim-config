" map : 正常模式，可视化模式和运算符模式可用
" nmap : 正常模式可用
" vmap : 可视化模式可用
" omap : 运算符模式可用
" map! : 插入模式和命令行模式可用
" imap : 插入模式可用
" cmap : 命令行模式可用

let mapleader = ","
let g:mapleader = ","
let maplocalleader = ","
let g:maplocalleader = ","

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '~/my-prototype-plugin'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/syntastic'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'ervandew/supertab'
"colorscheme Tomorrow-Night
Plug 'Shougo/neocomplcache.vim'
Plug 'rizzatti/dash.vim'
Plug 'Shougo/vimproc'
Plug 'Shougo/vimshell'
Plug 'moll/vim-bbye' 
Plug 'bruno-/vim-man'
Plug 'phpvim/phpcd.vim'
Plug 'vim-scripts/progressbar-widget' " 用来显示索引进度的插件
Plug 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plug 'Yggdroot/indentLine'
Plug 'stephpy/php-cs-fixer'

" Vim Go
Plug 'fatih/vim-go'
Plug 'dgryski/vim-godef'
Plug 'Blackrush/vim-gocode'
Plug 'majutsushi/tagbar'

" Emmet
Plug 'mattn/emmet-vim'

Plug 'mattn/webapi-vim'

" Add plugins to &runtimepath
call plug#end()


" Group dependencies, vim-snippets depends on ultisnips
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Plugin outside ~/.vim/plugged with post-update hook
nnoremap <silent> <c-p> :FZF<cr>

" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0


syntax on

" Vim Colors Solarized
" set background=dark
"set background=light
"colorscheme solarized
"colorscheme Tomorrow-Night

" Tagbar
nnoremap <silent> <leader>2 :TagbarToggle<cr>

" NERD Commenter
filetype plugin on

" rizzatti/dash.vim
nmap <silent> <leader>d <Plug>DashSearch

" Vim-Man
map <leader>k <Plug>(Man)
map <leader>v <Plug>(Vman)

" phpcd
autocmd FileType php setlocal omnifunc=phpcd#CompletePHP

" Yggdroot/indentLine
" let g:indentLine_char = '│'
" let g:indentLine_color_term = 239
" let g:indentLine_conceallevel = 1
" let g:indentLine_enabled = 0

"set encoding=utf-8 fileencodings=utf-8,cp936
set helplang=cn
set synmaxcol=500
set ruler
set laststatus=2
set showcmd
set showmode
set number
set incsearch
set ignorecase
set smartcase
set hlsearch
set backspace=indent,eol,start
set foldmarker=\ {{{\ ,\ }}}\  foldlevel=0 foldlevelstart=0 foldmethod=marker foldcolumn=0
set mouse=a
set tags+=.tags,../.tags,../../.tags,../../../.tags,../../../../.tags,../../../../../.tags,../../../../../../.tags,../../../../../../../.tags,../../../../../../../../.tags,../../../../../../../../../.tags,../../../../../../../../../../.tags
set viewoptions=folds,options,cursor,unix,slash " better unix / windows compatibility
set virtualedit=block           " allow for cursor beyond last character
set history=1000                " Store a ton of history (default is 20)
set spelllang=en_us
set hidden                      " allow buffer switching without saving
" Setting up the directories
set nobackup
set backupskip=/tmp/*,/private/tmp/*
if has('persistent_undo')
" set noundofile                "so is persistent undo ...
" set undofile                "so is persistent undo ...
set undofile                "so is persistent undo ...
set undolevels=1000         "maximum number of changes that can be undone
set undoreload=10000        "maximum number lines to save for undo on a buffer reload
endif
set splitright
set t_Co=256

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:➟\ ,eol:⤦,extends:❯,precedes:❮,nbsp:␣
set showbreak=↪
set nowrap                      " wrap long lines
set linebreak
set showbreak=…
set autoindent                  " indent at the same level of the previous line
set tabstop=4                   " an indentation every four columns
set softtabstop=4               " let backspace delete indent
set shiftwidth=4                " use indents of 4 spaces
set expandtab                   " tabs are spaces, not tabs
set matchpairs+=<:>                " match, to be used with %
set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)

" Cursor in right when select selection.
" set selection=exclusive

" Copy to system clipboard
vmap <c-c> "+y

map <F10> :w<CR> :!clear; make<CR> :!./%<<CR>

" set colorcolumn=80
call matchadd('ColorColumn', '\%121v', 120)

" Auto complete setting
set completeopt=longest,menuone

set wildmode=longest,full
set wildmenu "turn on wild menu
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/Library/**,*/.rbenv/**
set wildignore+=*/.nx/**,*.app
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.so,*.swp,*.zip,*.exe

" Make regex a little easier to type
set magic
" Turn off sound
set vb
set t_vb=

" Spelling highlights. Use underline in term to prevent cursorline highlights
" from interfering
if !has("gui_running")
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red
hi clear SpellCap
hi SpellCap cterm=underline ctermfg=blue
hi clear SpellLocal
hi SpellLocal cterm=underline ctermfg=blue
hi clear SpellRare
hi SpellRare cterm=underline ctermfg=blue
endif


" map
" cmd-v for paste
nnoremap <leader>q :qa<cr>
inoremap <D-v> <Esc>:set paste<CR>i<C-r>*<Esc>:set nopaste<CR>a
" redraw broken highlights
nnoremap <silent> <leader>6 :syntax sync fromstart<cr>

" <leader>``: Force quit all
nnoremap <leader>`` :qa!<cr>
" <leader>q: Quit all, very useful in vimdiff
nnoremap <leader>q :qa<cr>
" Bash like keys for the command line. These resemble personal zsh mappings
cnoremap <c-a> <home>
cnoremap <c-e> <end>

nnoremap <silent> <leader>/ :nohlsearch<cr>
nnoremap <silent> <leader>s :set spell!<cr>
nnoremap <silent> <leader>l :set list!<cr>

" Easier moving in tabs and windows
nnoremap <C-J> <C-W>j<C-W>_
nnoremap <C-K> <C-W>k<C-W>_
nnoremap <C-L> <C-W>l<C-W>_
nnoremap <C-H> <C-W>h<C-W>_

" Wrapped lines goes down/up to next row, rather than next line in file.
nnoremap <M-j> gj
nnoremap <M-k> gk
nnoremap <M-4> g$
nnoremap <M-6> g^
nnoremap <M-0> g^

" nnoremap j gj
" nnoremap k gk
" nnoremap $ g$
" nnoremap ^ g^
" nnoremap 0 g^

" Bubble single lines
nnoremap <S-Up> ddkP
nnoremap <S-Down> ddp
" Bubble multiple lines
vnoremap <S-Up> xkP`[V`]
vnoremap <S-Down> xp`[V`]

" Visually select the text that was last edited/pasted
nnoremap gV `[v`]

" Buffers switch
nnoremap <S-L> :bn<cr>
nnoremap <S-H> :bp<cr>
" use bbye.vim plugin
nnoremap <S-D> :Bdelete<cr>

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$
" Toggle current fold open/closed
nnoremap <Space> za

nnoremap <leader>a= :Tabularize /=<cr>
vnoremap <leader>a= :Tabularize /=<cr>
nnoremap <leader>a: :Tabularize /:<cr>
vnoremap <leader>a: :Tabularize /:<cr>
nnoremap <leader>a:: :Tabularize /:\zs<cr>
vnoremap <leader>a:: :Tabularize /:\zs<cr>
nnoremap <leader>a, :Tabularize /,<cr>
vnoremap <leader>a, :Tabularize /,<cr>
nnoremap <leader>a<Bar> :Tabularize /<Bar><cr>
vnoremap <leader>a<Bar> :Tabularize /<Bar><cr>
nnoremap <leader>a> :Tabularize /=><cr>
vnoremap <leader>a> :Tabularize /=><cr>

" copy current file name (relative/absolute) to system clipboard
if has("mac") || has("gui_macvim") || has("gui_mac")
" relative path  (src/foo.txt)
nnoremap <leader>cfr :let @*=expand("%")<cr>
" absolute path  (/something/src/foo.txt)
nnoremap <leader>cfa :let @*=expand("%:p")<cr>
" filename       (foo.txt)
nnoremap <leader>cff :let @*=expand("%:t")<cr>
" directory name (/something/src)
nnoremap <leader>cfd :let @*=expand("%:p:h")<cr>
endif
" copy current file name (relative/absolute) to system clipboard (Linux version)
if has("gui_gtk") || has("gui_gtk2") || has("gui_gnome") || has("unix")
" relative path (src/foo.txt)
nnoremap <leader>cfr :let @+=expand("%")<cr>
" absolute path (/something/src/foo.txt)
nnoremap <leader>cfa :let @+=expand("%:p")<cr>
" filename (foo.txt)
nnoremap <leader>cff :let @+=expand("%:t")<cr>
" directory name (/something/src)
nnoremap <leader>cfd :let @+=expand("%:p:h")<cr>
endif

" Change Working Directory to that of the current file
"cnoremap cwd lcd %:p:h
"cnoremap cd. lcd %:p:h

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" For when you forget to sudo.. Really Write the file.
cnoremap w!! w !sudo tee %

" Set paste mode
nmap <silent> <leader>p :setlocal paste!<cr>

" R: Reindent entire file
" nnoremap R mqHmwgg=G`wzt`q
" _ : Quick horizontal splits
" nnoremap _ :sp<cr>
" | : Quick vertical splits
" nnoremap <bar> :vsp<cr>

" Some helpers to edit mode
cnoremap %% <C-R>=expand('%:h').'/'<cr>
nmap <leader>ew :e %%
nmap <leader>es :sp %%
nmap <leader>ev :vsp %%
nmap <leader>et :tabe %%

nmap <leader>ef :echo expand("%:p")<cr>

" Display all lines with keyword under cursor and ask which one to jump to
nnoremap <leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<cr>

" Easier horizontal scrolling
nmap zl zL
nmap zh zH

" Html preview
nmap <silent> ,hp :!open -a Google\ Chrome %<cr><cr>

" Show hex colors
nnoremap <leader>h :call HexHighlight()<cr>

" promote jump
nnoremap <c-]> g<c-]>
nnoremap <c-[> <c-t>

" nerdtree
nnoremap <silent> <leader>1 :NERDTreeToggle<cr>:vertical res 31<cr>
let g:NERDTreeShowBookmarks=1
let g:NERDTreeIgnore=['\.tags', '\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', '\.idea', '\.project']
let g:NERDTreeMouseMode=2
let g:NERDTreeChDirMode=2
let g:NERDTreeShowHidden=1
let g:NERDTreeHighlightCursorline=0
let g:NERDTreeDirArrows=1
autocmd! BufEnter *
\ if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" nerdcommenter
" Always leave a space between the comment character and the comment
let NERDSpaceDelims=1

" airline
let g:airline_theme = 'powerlineish'
let g:airline_detect_paste=1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#buffer_nr_format = '%s:'
let g:airline#extensions#tabline#fnamemod = ':p:.'
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline#extensions#tabline#left_sep = '|'
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = '|'
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_section_z = ' %#__accent_bold#U:0x%-4.4B %#__restore__#%3p%%%{g:airline_symbols.linenr}%#__accent_bold#%4l:%-3c'



" neocomplcache
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Enable heavy features.
" Use camel case completion.
"let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
"let g:neocomplcache_enable_underbar_completion = 1

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
\ 'default' : '',
\ 'vimshell' : $HOME.'/.vimshell_hist',
\ 'scheme' : $HOME.'/.gosh_completions'
\ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
return neocomplcache#smart_close_popup() . "\<CR>"
" For no inserting <CR> key.
"return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplcache_enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplcache_enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_force_omni_patterns')
let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplcache_force_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" php
function! PhpSyntaxOverride()
hi! def link phpDocTags  phpDefine
hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
autocmd!
autocmd FileType php call PhpSyntaxOverride()
augroup END

" Go
let g:go_term_mode = "split"

autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>b <Plug>(go-build)
autocmd FileType go nmap <leader>t <Plug>(go-test)
autocmd FileType go nmap <leader>c <Plug>(go-coverage)

autocmd FileType go nmap <Leader>ds <Plug>(go-def-split)
autocmd FileType go nmap <Leader>dv <Plug>(go-def-vertical)
autocmd FileType go nmap <Leader>dt <Plug>(go-def-tab)
autocmd FileType go nmap <Leader>gd <Plug>(go-doc)
autocmd FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
autocmd FileType go nmap <Leader>gb <Plug>(go-doc-browser)
autocmd FileType go nmap <Leader>s <Plug>(go-implements)
autocmd FileType go nmap <Leader>i <Plug>(go-info)
autocmd FileType go nmap <Leader>e <Plug>(go-rename)

" PHP cx fixer 
nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>

let g:php_cs_fixer_level = "symfony"              " which level ?
let g:php_cs_fixer_config = "default"             " configuration
"let g:php_cs_fixer_config_file = '.php_cs'       " configuration file
let g:php_cs_fixer_php_path = "php"               " Path to PHP
" If you want to define specific fixers:
"let g:php_cs_fixer_fixers_list = "linefeed,short_tag,indentation"
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.

" Emmet
let g:user_emmet_expandabbr_key = '<Tab>'
let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.snippets_custom.json')), "\n"))


