

" - Syntax highlighting is enabled by default
" - ":filetype plugin indent on" is enabled by default
"
" - 'autoindent' is set by default
" - 'autoread' is set by default
" - 'backspace' defaults to "indent,eol,start"
" - 'backupdir' defaults to .,~/.local/share/nvim/backup (|xdg|)
" - 'belloff' defaults to "all"
" - 'complete' doesn't include "i"
" - 'directory' defaults to ~/.local/share/nvim/swap// (|xdg|), auto-created
" - 'display' defaults to "lastline"
" - 'formatoptions' defaults to "tcqj"
" - 'history' defaults to 10000 (the maximum)
" - 'hlsearch' is set by default
" - 'incsearch' is set by default
" - 'langnoremap' is enabled by default
" - 'langremap' is disabled by default
" - 'laststatus' defaults to 2 (statusline is always shown)
" - 'listchars' defaults to "tab:> ,trail:-,nbsp:+"
" - 'nocompatible' is always set
" - 'nrformats' defaults to "bin,hex"
" - 'ruler' is set by default
" - 'sessionoptions' doesn't include "options"
" - 'showcmd' is set by default
" - 'smarttab' is set by default
" - 'tabpagemax' defaults to 50
" - 'tags' defaults to "./tags;,tags"
" - 'ttyfast' is always set
" - 'undodir' defaults to ~/.local/share/nvim/undo (|xdg|), auto-created
" - 'viminfo' includes "!"
" - 'wildmenu' is set by default

" neovim config specifics
let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python'



" Plugins ------------------------------------------------------------------ {{{
call plug#begin('~/.config/nvim/bundle')

Plug 'lervag/vimtex', {'for' : ['tex', 'plaintex']}

" Plug 'fs111/pydoc.vim'
" Plug 'cloudhead/shady.vim'
" Plug 'chriskempson/base16-vim'
" Plug 'w0ng/vim-hybrid'
" Plug 'jceb/vim-orgmode'
" Plug 'junegunn/rainbow_parentheses.vim'
" Plug 'bhurlow/vim-parinfer'
" Plug 'kassio/neoterm', {'on' : 'T', 'for' : 'python'}
" Plug 'tpope/vim-abolish'
" Plug 'osyo-manga/vim-over'
" Plug 'cloudhead/neovim-fuzzy'
" Plug 'ctrlpvim/ctrlp.vim', {'on' : ['CtrlPBuffer', 'CtrlPMRUFiles']}
" Plug 'lucidstack/ctrlp-mpc.vim'
" Plug 'srstevenson/vim-picker', {'on' : ['PickerEdit', 'PickerBuffer', 'PickerHelp']}
" Plug 'tpope/vim-markdown',           {'for' : 'markdown'}

" https://github.com/junegunn/vim-plug#on-demand-loading-of-plugins

Plug 'chrisbra/Colorizer',           {'on' : ['ColorToggle', 'ColorHighlight', 'ColorClear'], 'for' : ['vim', 'html', 'css']}
Plug 'hkupty/iron.nvim',             {'for' : 'python'}
Plug 'junegunn/goyo.vim',            {'on' : 'Goyo'}
Plug 'junegunn/fzf',                 {'dir' : '~/.fzf', 'do' : './install --all'}
Plug 'junegunn/fzf.vim',             {'on' : ['Buffers', 'History', 'Files']}
Plug 'szw/vim-g',                    {'on' : ['Google'], 'for' : ['txt']}
Plug 'fmoralesc/vim-pad',            {'on' : 'Pad'}
Plug 'reedes/vim-wheel'
Plug 'ervandew/supertab'
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'
Plug 'notpratheek/vim-luna'
Plug 'notpratheek/vim-sol'
Plug 'rstacruz/sparkup',             {'for' : 'html'}
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/deoplete.nvim',         {'do': ':UpdateRemotePlugins' },
Plug 'zchee/deoplete-jedi',          {'for' : ['python']}
Plug 'ujihisa/neco-look',            {'for' : ['rst', 'txt', 'tex', 'plaintex']}
Plug 'google/vim-searchindex'
Plug 'w0rp/ale'
Plug 'mbbill/undotree',              {'on': 'UndotreeToggle'}
Plug 'chrisbra/unicode.vim',         {'on' : ['UnicodeName', 'UnicodeSearch', 'UnicodeTable']}
Plug 'tweekmonster/startuptime.vim', {'on' : 'StartupTime'}
Plug 'sotte/presenting.vim',         {'on' : 'PresentingStart'}


" Plug '~/goog-vim'
Plug '~/fefe'

call plug#end()
" }}}
" Essentials --------------------------------------------------------------- {{{
"
" Better colours
set termguicolors

if exists('&inccommand')
    set inccommand=nosplit
endif

set textwidth=80
" line numbers
set number

" use bash (just for clarity)
set shell=/bin/bash

nnoremap <C-c> :let @/=''<CR>

" inoremap <expr> <Tab> pumvisible() ? \"\<C-n>" : \"\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? \"\<C-p>" : \"\<S-Tab>"
" inoremap <expr> <cr> pumvisible() ? \"\<C-y>\<cr>" : \"\<cr>"


" Better than just /<search term>
" Also, `\v` enables use of Perl compatible regexes
nmap / /\v

" default nvim shows the typed command
set noshowcmd
" D-nvim --> It is enabled by default in nvim

" D-nvim
" enable loading the indent file for specific file types
" filetype indent on

" enable loading the plugin files for specific file types
" filetype plugin on

" switch on syntax highlighting
syntax enable

" hidden buffers (Useful with CtrlP)
set hidden

" set dictionary (useful with text files)
set dictionary=/usr/share/dict/words

" use `rg` instead of default `grep`
if executable('rg')
    set grepprg=rg\ --color=never
endif

" UTF-8 encoding
set encoding=utf-8

" D-nvim
" set autoindent

set smartindent
" D-nvim
" set incsearch
" D-nvim
" set hlsearch
" D-nvim
" set wildmenu

set cursorline
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set foldlevel=99
set foldmethod=indent
set breakindent


" Better completion
" do a `:h 'complete'`
set complete=.,w,b,u
" do a `:h 'completeopt'`
"set completeopt=longest,menuone,preview,menu
" had to remove longest, cause completor.vim has it implicitly enabled
set completeopt=longest,menuone,menu


call matchadd('ColorColumn', '\%80v', 100)

" au Filetype * match WhiteSpace /\s\+$/

augroup test_group
    autocmd!
    au Filetype * highlight ExtraWhiteSpace guibg=red
    au Filetype * match ExtraWhiteSpace /\s\+$/
augroup END

set expandtab
" D-nvim
" set laststatus=2

" swap files in a dir
set updatecount=10

" set undofile and an undo dir
set undofile

" Remember more previously used stuff
set history=1000

" Better term setting (read :h ttyfast for better understanding)
" D-nvim
" set ttyfast

" scroll offset (don't scroll all the way down)
" set scrolloff=2

" Stops screen from redrawing when macros are being executed
set lazyredraw

" NO WRAP ! EVER !
" This is especially usefull for `:vertical h <topic>`
set nowrap

" case insensitive commands
" Eg -- :start<Tab> ==> :Startify
set ignorecase smartcase

" Amount of time taken to show the matching paren
" (This is in tenths of a sec)
set matchtime=3

" Better completion
" do a `:h 'complete'`
set complete=.,w,b,u
" do a `:h 'completeopt'`
"set completeopt=longest,menuone,preview,menu
" had to remove longest, cause completor.vim has it implicitly enabled
set completeopt=menuone,menu

set previewheight=7
set winfixheight

" too many times :W ! Hence, the shortcut
cabbrev W w
cabbrev Qa qa
cabbrev Wqa wqa
cabbrev qa1 qa!
cabbrev qA1 qa!
cabbrev qA! qa!

" re-center the search results to the center of the screen
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" remap : -> ;
nnoremap ; :

" D-nvim
" set ruler
set nowrap

" }}}
" Status line -------------------------------------------------------------- {{{
" Begin Status line
"set statusline=\
" Show the mode
"set statusline+=%{toupper(mode())}\
" Buffer number
"set statusline+=[%n]\
" file name (full path of the file)
"set statusline+=%F\
" is file modified ?
"set statusline+=%m\
" shift stuff to right
"set statusline+=%=\
" is file READONLY?
"set statusline+=%r\
" Fugitive status
"set statusline+=%{fugitive#statusline()}\
" more to right
"set statusline+=%=\
" encoding
"set statusline+=%{(&fenc==\"\"?&enc:&fenc)}\
" fancy file format (first letteruppercase, rest of the letters lowercase)
" Eg -- html shown as Html
"set statusline+=%{toupper(strpart(&filetype,0,1)).strpart(&filetype,1)}\
" (current line:current column / total lines in file)
"set statusline+=%10(%l:%c/%L%)\
" percent position in the file
"set statusline+=%4(%p%%%)\

"set statusline+=%#error#
"set statusline+=%{StatuslineTabWarning()}
"set statusline+=%{StatuslineTrailingSpaceWarning()}
"set statusline+=%*


set statusline=\ %{toupper(mode())}\ [%n]\ %{mhi#sy_stats_wrapper()}\ %<%F\ %{(getbufvar(bufnr('%'),'&mod')?'◆':'')}%*\ %=\ %{prat#fugitive_status()}\ %{prat#ale_status()}\ %{toupper(strpart(&filetype,0,1)).strpart(&filetype,1)}\ %10(%l:%c/%L%)\ %4(%p%%%)\ %#error#%{prat#stl_tab_warning()}%{prat#stl_trailing_space_warning()}%*\%#errormsg#%{(&fenc!='utf-8'&&\&fenc!=''?'\ '.&fenc.'\ ':'')}%*
" set statusline=\ %{toupper(mode())}\ [%n]\ %{mhi#sy_stats_wrapper()}\ %<%{prat#better_path()}\ %{(getbufvar(bufnr('%'),'&mod')?'◆':'')}%*\ %=\ %{prat#fugitive_status()}\ %{prat#ale_status()}\ %{prat#proper_case()}\ %10(%l:%c/%L%)\ %4(%p%%%)\ %#error#%{prat#stl_tab_warning()}%{prat#stl_trailing_space_warning()}%*\%#errormsg#%{prat#file_enc()}%*
" }}}
" Better Keymappings ------------------------------------------------------- {{{
"
" GET THE FUCK OUT OF THE TERMINAL
tnoremap <Esc> <C-\><C-n>
"
" ---------------------------------------------------------------------------
" Use CtrlP to manage buffers
" nnoremap <C-Tab> :CtrlPBuffer<CR>
nnoremap <C-Tab> :Buffers<CR>
" ---------------------------------------------------------------------------
" ;e to open recent files (next best alternative is `;e.`)
" nnoremap ;e :CtrlPMRUFiles<CR>
nnoremap ;e :History<CR>
" ---------------------------------------------------------------------------
" <C-p> map to :Files from Fzf (Since this is hardcoded in brain !)
nnoremap <C-p> :Files<CR>
" ---------------------------------------------------------------------------
" clear serached stuff
nnoremap <C-c>silent :let @/=""<CR>
" ---------------------------------------------------------------------------
" Returns cursor to last position before quitting
augroup line_return
    au!
    au BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \ execute 'normal! g`"zvzz' |
                \ endif
augroup END
" ---------------------------------------------------------------------------
" Thanks to Steve Losh
" `Uppercase word`: mapping.
"
" This mapping allows you to press <c-u> in insert mode to convert the current
" word to uppercase.  It's handy when you're writing names of constants and
" don't want to use Capslock.
"
" To use it you type the name of the constant in lowercase.  While your
" cursor is at the end of the word, press <c-u> to uppercase it, and then
" continue happily on your way:
"
"                            cursor
"                            v
"     max_connections_allowed|
"     <c-u>
"     MAX_CONNECTIONS_ALLOWED|
"                            ^
"                            cursor
"
" It works by exiting out of insert mode, recording the current cursor location
" in the z mark, using gUiw to uppercase inside the current word, moving
" back to the z mark, and entering insert mode again.
"
" Note that this will overwrite the contents of the z mark.  I never use it,
" but if you do you'll probably want to use another mark.
inoremap <C-u> <esc>mzgUiw`za
" }}}
" Wild Ignore ------------------------------------------------------------ - {{{
"
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.oo,*.obj,*.exe,*.dll       " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*.orig                           " Merge resolution files
set wildignore+=*.class                          " Java Class files
set wildignore+=$VIMRUNTIME/doc/*.txt            " Individual helpfiles
set wildignore+=$VIMRUNTIME/doc/*.tar.gz         " compressed helpfiles
" For the `**` meaning, do a `:h starstar-wildcard`
set wildignore+=**/doc/*.txt
" }}}
" AutoCommands ------------------------------------------------------------- {{{
" General filetype {{{
" ---------------------------------------------------------------------------
" Delete all WhiteSpace *before* saving the buffer
autocmd BufWritePre *.{rst,txt} %s/\s\+$//e
" ---------------------------------------------------------------------------
" Resize splits when the window is resized
autocmd VimResized * :wincmd =
" ---------------------------------------------------------------------------
" Show trailing space or tab warnings in the statusline
autocmd CursorHold,BufWritePost * unlet! b:statusline_trailing_space_warning
autocmd CursorHold,BufWritePost * unlet! b:statusline_tab_warning
" ---------------------------------------------------------------------------
" Show trailing space or tab warnings in the statusline
autocmd CursorHold,BufWritePost * unlet! b:stl_word_count
" ---------------------------------------------------------------------------
" Thanks to Damian Conway for this
" prevent duplications of auto complete
augroup Undouble_Completions
    autocmd!
    autocmd CompleteDone * call setline('.', substitute(getline('.'), '\(\.\?\k\+\)\%' . getpos('.')[2] . 'c\zs\1', '', ''))
augroup END
" }}}
" Python {{{
autocmd FileType python setlocal textwidth=79 shiftwidth=4 tabstop=4 expandtab softtabstop=4 shiftround autoindent
autocmd FileType python setlocal keywordprg=python3\ -m\ pydoc
autocmd FileType python syn keyword pythonDecorator True None False self
" }}}
" Text File {{{
" autocmd FileType text setlocal dictionary+=/usr/share/dict/words
" }}}
" reStructured Text {{{
autocmd FileType rst iabbrev _ [#a-]_.<Esc>2h<insert>
autocmd FileType rst iabbrev .. .. [#a-]<Esc>h<insert>
" }}}
" }}}
" Plugin Settings - {{{
" Startify {{{
"
let g:startify_custom_indices = map(range(1,100), 'string(v:val)')
let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_bookmarks = [
            \ '~/Documents/quizzes/0-QUIZZES_REVIEWED.txt',
            \ '~/.Xresources',
            \ '~/.config/nvim/init.vim',
            \ '~/.config/nvim/ginit.vim',
            \ '~/.config/i3/config',
            \ '~/.config/i3/i3status.conf'
            \ ]
let g:startify_files_number = 8
let g:startify_change_to_dir = 0
let g:startify_change_to_vcs_root = 1
let g:startify_skiplist = [
            \ '.git/COMMIT_EDITMSG',
            \ '.gtkrc-2.0',
            \ '/usr/share/vim/vim74/doc',
            \ '/etc/*',
            \ escape(fnamemodify(resolve($VIMRUNTIME), ':p'), '\') . 'doc',
            \ 'bundle/.*/doc',
            \ expand('~/craps')
            \ ]

let g:startify_relative_path = 1
let g:startify_update_oldfiles = 1
autocmd User Startified let &l:stl = ' Startify'
let g:startify_custom_header = []
let g:startify_list_order = [
            \ ['   MRU:'],
            \ 'files',
            \ ['   Sess:'],
            \ 'sessions',
            \ ['   Markers:'],
            \ 'bookmarks'
            \ ]
" }}}
" FZF {{{
"
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251 guifg=#FF0000
  highlight fzf2 ctermfg=23 ctermbg=251 guifg=#00FF00
  highlight fzf3 ctermfg=237 ctermbg=251 guifg=#0000FF
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction


let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

autocmd! User FzfStatusLine call <SID>fzf_statusline()


command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)
" }}}
" SuperTab {{{

" let g:SuperTabDefaultCompletionType = \"<c-p>"
" let g:SuperTabDefaultCompletionType = \"<c-n>"
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabContextTextOmniPrecedence = ['&completefunc', '&omnifunc']
let g:SuperTabLongestHighlight = 1
let g:SuperTabCrMapping = 1
let g:SuperTabClosePreviewOnPopupClose = 1
let g:SuperTabCompleteCase = 'ignore'

" let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
" let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
" let g:SuperTabContextDiscoverDiscovery = ["&completefunc:<c-x><c-u>", \"&omnifunc:<c-x><c-o>"]
" let g:SuperTabLongestEnhanced = 1
" use <Tab> to choose the first item of the pop-up menu
" }}}
" Vim-G (Search Google from G/Vim itself !) {{{
let g:vim_g_open_command = "xdg-open"
let g:vim_g_perl_command = "python3"
let g:vim_g_query_url = "http://google.co.in/search?q="
" }}}
" Signify {{{
let g:signify_sign_show_text = 0
" }}}
"  Deoplete {{{

call deoplete#custom#source('_', 'matchers', ['matcher_full_fuzzy', 'matcher_length'])

autocmd InsertEnter * call deoplete#enable()

let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#max_list = 15
let g:deoplete#auto_complete_delay = 0
let g:deoplete#file#enable_buffer_path = 1

" let g:deoplete#complete_method='omnifunc'
" let g:deoplete#omni#input_patterns = {}
" let g:deoplete#omni#input_patterns.python = ''
" let g:deoplete#omni#functions = {}


"}}}
" Vimtex {{{
let g:tex_flavor = "latex"
" }}}
" ALE {{{
" !!! Requires `autopep8`, `isort` to be installed
" !!! (might as well also have `flake8` installed)

let g:ale_linters = {
            \ 'python' : ['flake8'],
            \ 'latex'  : ['proselint']
            \ }

let g:ale_fixers = {
            \ 'python' : ['isort', 'autopep8']
            \ }

let g:ale_python_autopep8_options = '--aggressive --aggressive'
let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 1
" let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_format = '[%linter%] %s'
" let g:ale_sign_error = '✖✖'
" let g:ale_sign_error = 'Ｘ'

" let g:ale_sign_warning = '>>'

" let g:ale_sign_warning = '❎'
" let g:ale_sign_warning = '◾⛔'
" let g:ale_sign_warning = '⭕'
" let g:ale_sign_warning = '🙈'
" let g:ale_sign_warning = '‣'
" let g:ale_sign_warning = '⋄'
" let g:ale_sign_warning = '▶▶'
" let g:ale_sign_warning = '﹥'
" let g:ale_sign_warning = '＞'


" }}}
" }}}


" ⋄◆

runtime macros/matchit.vim

" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>
" vnoremap <up> <nop>
" vnoremap <down> <nop>
" vnoremap <left> <nop>
" vnoremap <right> <nop>


if has("spell")
  " turn spelling on by default
  " set spell

  " toggle spelling with F4 key
  nnoremap <F7> :set spell!<CR><Bar>:echo "Spell Check: " . strpart("OffOn", 3 * &spell, 3)<CR>

  " they were using white on white
  highlight PmenuSel ctermfg=black ctermbg=lightgray

  " limit it to just the top 10 items
  set sps=best,10
endif

" •    U+2022  &bull;            BULLET                                                   http://unicode-table.com/en/2022/
" ‣    U+2023  &#x2023;          TRIANGULAR BULLET                                        http://unicode-table.com/en/2023/
" →    U+2192  &rarr;            RIGHTWARDS ARROW (->)                                    http://unicode-table.com/en/2192/
" ∗    U+2217  &lowast;          ASTERISK OPERATOR (*-)                                   http://unicode-table.com/en/2217/
" ＊    U+FF0A  &#xFF0A;          FULLWIDTH ASTERISK                                       http://unicode-table.com/en/FF0A/
" ⊖    U+2296  &CircleMinus;     CIRCLED MINUS                                            http://unicode-table.com/en/2296/
" ⊗    U+2297  &CircleTimes;     CIRCLED TIMES                                            http://unicode-table.com/en/2297/
" ⊘    U+2298  &osol;            CIRCLED DIVISION SLASH                                   http://unicode-table.com/en/2298/
" ⊙    U+2299  &CircleDot;       CIRCLED DOT OPERATOR (0.)                                http://unicode-table.com/en/2299/
" ⊚    U+229A  &circledcirc;     CIRCLED RING OPERATOR (02)                               http://unicode-table.com/en/229A/
" ⊛    U+229B  &circledast;      CIRCLED ASTERISK OPERATOR                                http://unicode-table.com/en/229B/
" ⊜    U+229C  &#x229C;          CIRCLED EQUALS                                           http://unicode-table.com/en/229C/
" ⊝    U+229D  &circleddash;     CIRCLED DASH                                             http://unicode-table.com/en/229D/
" ⊞    U+229E  &boxplus;         SQUARED PLUS                                             http://unicode-table.com/en/229E/
" ⊟    U+229F  &boxminus;        SQUARED MINUS                                            http://unicode-table.com/en/229F/
" ⊠    U+22A0  &boxtimes;        SQUARED TIMES                                            http://unicode-table.com/en/22A0/
" ⊡    U+22A1  &dotsquare;       SQUARED DOT OPERATOR                                     http://unicode-table.com/en/22A1/


" vim:foldmethod=marker:foldlevel=0:textwidth=79
