if has("win64") || has("win32")
  source $VIMRUNTIME/vimrc_example.vim
endif

set nocompatible

filetype plugin on

set modelines=0
set nomodeline

set clipboard=unnamedplus
" execute pathogen#infect()
call plug#begin('~/.vim/bundle')
Plug 'andymass/vim-matchup'
" Plug 'liuchengxu/vim-clap'
" Plug 'ap/vim-buftabline'
" Plug 'pacha/vem-tabline'
" edit macros
Plug 'hiroakis/vim-breakline'
Plug 'vimwiki/vimwiki'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'easymotion/vim-easymotion'
Plug 'rbong/vim-buffest'
Plug 'rhysd/vim-healthcheck'
Plug 'mg979/vim-visual-multi'
Plug 'mptre/vim-printf'
Plug 'ronakg/quickr-preview.vim'
" Plug 'wellle/context.vim'
Plug 'junkblocker/git-time-lapse'
" tagbar more up-to-date but seem slower
" Plug 'liuchengxu/vista.vim.git'
" Plug 'liuchengxu/vim-clap.git'
" Plug 'liuchengxu/vim-clap', { 'do': function('clap#helper#build_all') }
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
" Plug 'mg979/vim-yanktools'
Plug 'bignimbus/you-are-here.vim'
"comming info under cursor
" Plug 'rhysd/git-messenger.vim'
" Plug 'dhruvasagar/vim-zoom'
" Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
" Plug 'junegunn/vim-peekaboo'
" Plug 'Yilin-Yang/vim-markbar'
Plug 'ojroques/vim-oscyank'
Plug 'tomtom/tcomment_vim'
Plug 'vim-scripts/YankRing.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'pbogut/fzf-mru.vim'
" Plug 'jupyter-vim/jupyter-vim'
Plug '~/.vim/bundle/molokai'
" Plug 'zefei/vim-colortuner', { 'on': 'Colortuner' }
" Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
Plug 'markonm/traces.vim'
Plug 'justinmk/vim-sneak'
" Plug 'autozimu/LanguageClient-neovim', { 'on': 'LanguageClientStart' }
 Plug 'autozimu/LanguageClient-neovim', {
     \ 'branch': 'next',
     \ 'do': 'bash install.sh',
     \ }
" Plug 'tomasr/molokai' " now it's ok in plug menu...but it won't update
" Plug 'simnalamburt/vim-mundo', { 'on': 'MundoToggle' }
Plug 'ronakg/quickr-cscope.vim'
" Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp' } "maybe I am ok with just c.vim in .vim/syntax
" Plug 'severin-lemaignan/vim-minimap', { 'on': 'Minimap' }
" Plug 'majutsushi/tagbar', { 'for': 'cpp' }
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug '~/.vim/bundle/highlight'
Plug 'ntpeters/vim-better-whitespace'
" Plug 'metakirby5/codi.vim'
"show header file for cpp
Plug 'derekwyatt/vim-fswitch'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-sleuth'
"git pull --recurse-submodules
Plug 'Valloric/YouCompleteMe', { 'for': ['cpp','py','javascript'], 'do': './install.py --clang-completer --system-libclang --ts-completer' }
" Plug 'dense-analysis/ale'
Plug 'm-pilia/vim-ccls'
" Plug 'Valloric/YouCompleteMe', { 'for': 'cpp', 'do': './install.py --clang-completer' }
" Plug 'tpope/vim-fugitive', { 'on': 'Gdiff' }
" Plug 'tommcdo/vim-fugitive-blame-ext', { 'on': 'Gdiff' }
Plug 'tpope/vim-fugitive'
Plug 'tommcdo/vim-fugitive-blame-ext'
Plug 'terryma/vim-multiple-cursors'
" Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-abolish'
Plug 'skywind3000/asyncrun.vim'
Plug 'ramele/agrep', { 'on': 'Agrep' }
" Plug 'rdnetto/YCM-Generator', { 'for': 'cpp' }
Plug 'wellle/targets.vim'
Plug 'junegunn/vim-easy-align'
" Plug 'rhysd/clever-f.vim'
Plug 'tpope/vim-surround'
" jump between if else as if {  } do I use it?
" Plug 'adelarsq/vim-matchit'
Plug 'dyng/ctrlsf.vim', { 'on': 'CtrlSF' }
Plug 'brooth/far.vim', { 'on': 'Far' }
Plug 'will133/vim-dirdiff', { 'on': 'DirDiff' }
Plug 'mh21/errormarker.vim'
Plug 'wincent/ferret'
" Plug 'devjoe/vim-codequery', { 'for': 'cpp' }
" Plug 'prabirshrestha/vim-lsp', { 'for': 'cpp' }
" Plug 'pdavydov108/vim-lsp-cquery', { 'for': 'cpp' }
" Plug 'pdavydov108/vim-lsp-cquery'
Plug 'prabirshrestha/async.vim'
Plug 'osyo-manga/vim-over'
Plug 'jiangmiao/auto-pairs'
Plug 'jremmen/vim-ripgrep'
Plug 'skywind3000/quickmenu.vim'
Plug 'cohama/agit.vim', { 'on': 'Agit' }
Plug '~/.vim/bundle/startupFn'
Plug 'vim-airline/vim-airline-themes'
Plug 'Lenovsky/nuake'
" move selected line up/down
Plug 'zirrostig/vim-schlepp'
" do in selection B or search S
Plug 'vim-scripts/vis'
"https://github.com/t9md/vim-textmanip maybe better moving of blocks with insert/replace
call plug#end()

""" JUPYTER """
" autocmd FileType julia,python call jupyter#MakeStandardCommands()
set pyxversion=3

let g:csPath=""
let g:ycm_auto_hover=''

" let g:ale_statusline_format = ['☀️️ %d', '🕯️ %d', '']
" let b:ale_fixers = {'javascript': ['prettier', 'eslint']}

let g:quickr_cscope_autoload_db = 0
let g:quickr_cscope_keymaps = 0
autocmd FileType javascript nmap <buffer> <C-]> :YcmCompleter GoTo<CR>

"allows Highlight plugin to save conf
"set viminfo^=!
" % - restores buffers between sessions
"set viminfo=!,%,<800,'10,/50,:100,h,f0,n~/.vim/cache/.viminfo
if !has('nvim')
  set viminfo=!,<800,'10,/50,:100,h,f0,n~/.vim/cache/.viminfo
elseif has('nvim')
  set viminfo=!,<800,'10,/50,:100,h,f0,n~/.config/nvim/cache/.viminfo
endif


" autocmd TextYankPost * if v:event.operator is 'y' && v:event.regname is '' | OSCYankReg " | endif
vnoremap <silent> <leader>y :OSCYank<CR>

"""
"you are here setup
nnoremap <silent> <leader>here :call you_are_here#YouAreHere()<CR>

" top, right, bottom, left border in popups
let g:youarehere_border = [1, 1, 1, 1]
"
" " top, right, bottom, left padding in popups
let g:youarehere_padding = [1, 1, 1, 1]
"
"" g:content is passed to expand to render the filename.
"" see :help expand for more options
let g:content = "%"
"""


"data for plugin quickMenu
" call g:quickmenu#append('LspHover', 'LspHover', '')
" call g:quickmenu#append('LspCCaller', 'LspCqueryCallers', '')
" call g:quickmenu#append('LspDef', 'LspDefinition', '')
" call g:quickmenu#append('LspDiag', 'LspDocumentDiagnostics', '')
" call g:quickmenu#append('LangSMenu', 'call LanguageClient_contextMenu()', '')
" call g:quickmenu#append('LangSHover', 'call LanguageClient#textDocument_hover()', '')
" call g:quickmenu#append('LangSImpl', 'call LanguageClient#textDocument_implementation()', '')
" call g:quickmenu#append('LangSRefs', 'call LanguageClient#textDocument_references()', '')
" call g:quickmenu#append('LangSTypeDef', 'call LanguageClient#textDocument_typeDefinition()', '')
" call g:quickmenu#append('LangSDef', 'call LanguageClient#textDocument_definition()', '')
" call g:quickmenu#append('LangSCaller', "call LanguageClient#findLocations({'method':'$ccls/call'})", '')
" call g:quickmenu#append('TraceHide', 'call TraceHide("SIP\ Signalling\\|Conversation*\\|CallView*")', '')

let g:execMenu = {
  \ "LangServer Menu":           "call LanguageClient_contextMenu()",
  \ "LangServer Hover":          "call LanguageClient#textDocument_hover()",
  \ "LangServer Implementation": "call LanguageClient#textDocument_implementation()",
  \ "LangServer References":     "call LanguageClient#textDocument_references()",
  \ "LangServer TypeDef":        "call LanguageClient#textDocument_typeDefinition()",
  \ "LangServer Definition":     "call LanguageClient#textDocument_definition()",
  \ "TraceHide":                 "call TraceHide('SIP\ Signalling\\|Conversation*\\|CallView*')",
  \ "LangServer Caller":         "call LanguageClient#findLocations({\'method\':\'$ccls/call\'})",
  \ "Cscope callers":            "call CScopeExec(\"c\")",
  \ "Cscope ref1":               "call CScopeExec(\"e\")",
  \ "Cscope ref2":               "call CScopeExec(\"t\")",
  \ "Cscope decl":               "call CScopeExec(\"s\")",
  \}

function ShowExecMenu()
  call fzf#run({'source':keys(g:execMenu), 'down': '30%', 'sink': function('ExecMenuSelection')})
endfunction

function ExecMenuSelection(expr)
  execute g:execMenu[a:expr]
endfunction

function! CScopeExec(method)
  echom "PATH>" . g:csPath . "<>" . " " . empty(g:csPath) . "<"
  if empty(g:csPath)
    echom "cscope not configured with path"
    return
  endif
  echom "got input " . a:method
  let l:searchTerm = expand("<cword>")
  echom "got searchterm " . l:searchTerm
  execute "cscope find " . a:method . " " . l:searchTerm
endfunction
"missing
"call LanguageClient#findLocations({'method':'$ccls/call-hierarchy'})<cr>
"language server options
"nn <silent> xb :call LanguageClient#findLocations({'method':'$ccls/inheritance'})<cr>
" bases of up to 3 levels
" nn <silent> xB :call LanguageClient#findLocations({'method':'$ccls/inheritance','levels':3})<cr>
" " derived
" nn <silent> xd :call LanguageClient#findLocations({'method':'$ccls/inheritance','derived':v:true})<cr>
" " derived of up to 3 levels
" nn <silent> xD :call LanguageClient#findLocations({'method':'$ccls/inheritance','derived':v:true,'levels':3})<cr>
" 
" " caller
" nn <silent> xc :call LanguageClient#findLocations({'method':'$ccls/call'})<cr>
" " callee
" nn <silent> xC :call LanguageClient#findLocations({'method':'$ccls/call','callee':v:true})<cr>
" 
" " $ccls/member
" " nested classes / types in a namespace
" nn <silent> xs :call LanguageClient#findLocations({'method':'$ccls/member','kind':2})<cr>
" " member functions / functions in a namespace
" nn <silent> xf :call LanguageClient#findLocations({'method':'$ccls/member','kind':3})<cr>
" " member variables / variables in a namespace
" nn <silent> xm :call LanguageClient#findLocations({'method':'$ccls/member'})<cr>
let g:LanguageClient_diagnosticsEnable=0
let g:LanguageClient_selectionUI="quickfix"
" let g:clighter8_libclang_path="/usr/lib/llvm-6.0/lib/libclang.so"

    " \ 'cpp': ['ccls', '--log-file=/tmp/cc.log --init={"initialization_options": { "cache": {"directory": "/home/pc/tools/cclsCache" }}}'],
    " \ 'cpp': ['ccls', --log-file=/tmp/cc.log --init={'initialization_options': { 'cache': {'directory': '/home/km000057/tools/ccls/Release/cache' }}}'],
    " \ 'cpp': ['ccls', '-init={"initializationOptions": {"cache": {"directory": "/home/pc/tools/cclsCache/"},"cacheFormat": "json"}}','-log-file=/tmp/ccc.log']
let g:LanguageClient_serverCommands = {
      \ 'cpp': ['ccls', '-init={"compilationDatabaseCommand":"","compilationDatabaseDirectory":"","cache":{"directory":"/home/pc/tools/cclsCache/"}}', '--log-file=/tmp/ccls.log' ]
    \ }
" let g:LanguageClient_serverCommands = {
    " \ 'c': ['ccls', '--init={"initialization_options": { "cache": {"directory": "/home/pc/tools/cclsCache" }}}'],
    " \ 'cpp': ['ccls', '--log-file=/tmp/cc.log --init={"initialization_options": { "cache": {"directory": "/home/pc/tools/cclsCache" }}}'],
    " \ 'cuda': ['ccls', '--log-file=/tmp/cc.log'],
    " \ 'objc': ['ccls', '--log-file=/tmp/cc.log'],
    " \ }

 " let g:LanguageClient_serverCommands = {
            " \ 'c':   ['cquery', '--log-file=/tmp/vim-cquery.log',
            " \         '--init={"cacheDirectory":"$HOME/.cquery-cache"}'],
            " \ 'cpp': ['cquery', '--log-file=/tmp/vim-cquery.log',
            " \         '--init={"cacheDirectory":"$HOME/.cquery-cache"}'],
            " \ }
" 
" 
let g:LanguageClient_loadSettings = 1 " Use an absolute configuration path if you want system-wide settings
" let g:LanguageClient_settingsPath = '/home/YOUR_USERNAME/.config/nvim/settings.json'
" https://github.com/autozimu/LanguageClient-neovim/issues/379 LSP snippet is not supported
let g:LanguageClient_hasSnippetSupport = 0

let g:LanguageClient_hoverPreview="Always"
"allow you to move freely in visual block mode
set virtualedit=block

" {{{

" makes * and # work on visual mode too.
function! s:VSetSearch(cmdtype)
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, a:cmdtype.'\'), '\n', '\\n', 'g')
    " Use this line instead of the above to match matches spanning across lines
  "let @/ = '\V' . substitute(escape(@s, a:cmdtype.'\'), '\_s\+', '\\_s\\+', 'g')
  let @s = temp
endfunction

xnoremap * :<C-u>call <SID>VSetSearch('/')<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch('?')<CR>?<C-R>=@/<CR><CR>

"}}}

" yankring turn off default setup
let g:yankring_paste_v_bkey = ''
let g:yankring_paste_v_akey = ''
let g:yankring_paste_n_bkey = ''
let g:yankring_paste_n_akey = ''
let g:yankring_paste_v_key = ''
let g:yankring_manage_numbered_reg = 0
let g:yankring_clipboard_monitor = 0
let g:yankring_paste_check_default_buffer = 0
let g:yankring_zap_keys = ''


"##########################
" Join lines and keep the cursor in place
" nnoremap J mzJ`z

" Split line (opposite to join lines)
nnoremap M :call <SID>split_line()<CR>

function s:split_line()
  " Do a split
  exe "normal! i\<CR>\<ESC>"

  " Remember position and last search expression
  normal! mw
  let _s = @/

  " Remove any trailing whitespace characters from the line above
  silent! -1 s/\v +$//

  " Restore last search expression
  nohlsearch
  let @/ = _s

  " Restore cursor position
  normal! `w
endfunction

"##########################

" Center search results
nnoremap n nzvzz
nnoremap N Nzvzz
nnoremap * *zvzz
nnoremap # #zvzz

"##########################

" Normalize Y behavior to yank till the end of line
nnoremap Y y$

"##############
"auto select visual block after indenting
vnoremap < <gv
vnoremap > >gv
vnoremap <Tab> >gv
vnoremap <S-Tab> <LT>gv
nnoremap <Tab> >>
nnoremap <S-Tab> <LT><LT>
inoremap <S-Tab> <C-O><LT><LT>
"##########################
" Open diffs in vertical splits
" Use 'xdiff' library options: patience algorithm with indent-heuristics (same to Git options)
" NOTE: vim uses the external diff utility which doesn't do word diffs nor can it find moved-and-modified lines.
" See: https://stackoverflow.com/questions/36519864/the-way-to-improve-vimdiff-similarity-searching-mechanism
" set diffopt=internal,filler,vertical,context:5,foldcolumn:1,indent-heuristic,algorithm:patience
" set diffopt=internal,filler,vertical,context:5,foldcolumn:1


"##########################
" Timeout settings
" Wait forever until I recall mapping
" Don't wait to much for keycodes send by terminal, so there's no delay on <ESC>
set notimeout
set ttimeout
set timeoutlen=2000
set ttimeoutlen=30

set backspace=indent,eol,start


"##########################

" autopair - do not jump do end pair
let g:AutoPairsMultilineClose=0


"##########################
" allow <C-a> increment numbres and letters
set nrformats+=alpha


let g:rainbow_active = 1
"colorscheme desert
colorscheme molokai
" fix molokai cursor disapearing on matching parenthesis
"beforehi MatchParen      ctermfg=cyan ctermbg=208 cterm=bold
"fixhi MatchParen      ctermfg=208 ctermbg=233 cterm=bold
"needs to be at the end of file to take effect

syntax on

"TODO REMOVE REMOVE JUST DEBUG
   " let g:ycm_server_use_vim_stdout = 1
   " let g:ycm_server_log_level = 'debug'

" show the editing mode on the last line
set showmode
"set statusline+=%F

"##########################
" tell vim to keep a backup file
set backup
"mkdir ~/.vim/.backup ~/.vim/.swp ~/.vim/.undo

"settings for sessions
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds"
let g:session_directory = "~/.vim/tmp/session"  " the directory must be created before the sessions will be saved there
let g:session_autoload = "no"                   " automatic reload sessions
let g:session_autosave = "no"                   " autosave
let g:session_command_aliases = 1

let g:gundo_prefer_python3=1

let g:DirDiffIgnore=".git,*.d,*.o"
let g:DirDiffExcludes=".git,*.d,*.o"

set backupdir=~/.vim/.backup/
set directory=~/.vim/.swp/
set undofile
set undodir=~/.vim/.undo
set undolevels=500
set undoreload=500

"##########################
set display=lastline


    " \ 'cpp': ['ccls', --log-file=/tmp/cc.log --init={'initialization_options': { 'cache': {'directory': '/home/km000057/tools/ccls/Release/cache' }}}'],

" sneak config
let g:sneak#label = 1



"##########################
" codequery db
let g:my_db_path="~/GIT/mainline/"
"orig let g:my_db_path="~/bin/"
" usage :CodeQuery 'opton from list' word under cursor
" similar to \s with cscope
"
"##########################
" rules for loading tags
let g:currentTagFilePath=""
let g:lspLoaded=""
" autocmd BufReadPost,BufWinEnter *.cpp :call LoadTags()
autocmd BufWinEnter *.cpp :call LoadTags()
function! LoadTags()
  let l:path = expand('%:p:h')
  let l:path = substitute(l:path,'vobs.*','','')
  if (g:currentTagFilePath != l:path )
    let g:currentTagFilePath = l:path
    call SetTags(l:path)
  endif
  " if (g:lspLoaded == "")
    " let g:lspLoaded = "true"
    " call lsp#enable()
  " endif
  " exec LanguageClientStart"
endfunction

function! LoadTagsFile(path)
  let l:path = a:path
  if (g:currentTagFilePath != l:path )
    let g:currentTagFilePath = l:path
    call SetTags(l:path)
  endif
  " if (g:lspLoaded == "")
    " let g:lspLoaded = "true"
    " call lsp#enable()
  " endif
  " exec LanguageClientStart"
endfunction
" if executable('cquery')
   " au User lsp_setup call lsp#register_server({
      " \ 'name': 'cquery',
      " \ 'cmd': {server_info->['cquery']},
      " \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
      " \ 'initialization_options': { 'cacheDirectory': '/home/km000057/tools/cquery/build/release/cache' },
      " \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
      " \ })
" endif
" if executable('ccls')
   " au User lsp_setup call lsp#register_server({
      " \ 'name': 'ccls',
      " \ 'cmd': {server_info->['ccls']},
      " \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
      " \ 'initialization_options': { 'cache': {'directory': '/home/km000057/tools/ccls/Release/cache' }},
      " \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
      " \ })
" endif


"################################################
" YouCompleteMe setup
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_auto_trigger = 1
let g:ycm_collect_identifiers_from_tags_files = 0
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
" let g:ycm_complete_in_strings = 1 " Completion in string
let g:ycm_add_preview_to_completeopt = 1
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/.ycm_extra_conf.py'

let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion = ['<TAB>','<Down>']
let g:ycm_key_list_previous_completion=['<Up>']
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 0
"turn off YMC 
"nnoremap <leader>y :let g:ycm_auto_trigger=0<CR>                " turn off YCM
"nnoremap <leader>Y :let g:ycm_auto_trigger=1<CR>                "turn on YCM
" turn off syntax checking
" change
" let g:ycm_show_diagnostics_ui = 1

"################################################

set completeopt=menu,menuone,preview,noselect,noinsert


"" SNIPETS
nnoremap ,hfor :-1read $HOME/.vim/bundle/after/snippets/for.txt<CR>f(a

"##########################################


let g:notes_directories = ['~/doc/vimNotes', '~/doc/vimNotes']

let g:hopping#keymapping = {
\	"\<C-n>" : "<Over>(hopping-next)",
\	"\<C-p>" : "<Over>(hopping-prev)",
\	"\<C-u>" : "<Over>(scroll-u)",
\	"\<C-d>" : "<Over>(scroll-d)",
\}

" clever f config
let g:clever_f_smart_case = 1
let g:clever_f_show_prompt = 1
" Use same highlighting group as a normal search
" let g:clever_f_mark_char_color = 'IncSearch'


set backspace=indent,eol,start


set autoindent

" highlight matching search strings
set hlsearch
" make searches case insensitive
set ignorecase

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
set showmatch

" FOR SPACETABS
set expandtab
set shiftwidth=2
set softtabstop=2


"FOR HARD TABS
"set shiftwidth=2
"set tabstop=2

if has("unix")
  " set guifont=Monospace\ 13
  set guifont=Ubuntu\ Mono\ 12
else
  set guifont=Lucida_Console:h12:b:cANSI:qDRAFT   
endif

set wildmode=longest,list,full
set wildmenu
set path+=/home/km000057/doc/**,/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/Media/**,/home/km000057/GIT/mainline/vobs/Opera_Platform_Linux/GPAL/GPALMedia/**,/home/km000057/_DWE_/**,/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/Media/Interface/**,/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/Media/VoiceEngine/**,**

set scrolloff=4
set hidden
set copyindent
set smartcase
set smarttab " insert tabs on the start of a line according to shiftwidth, not tabstop
set autochdir
set hlsearch
set incsearch
set splitbelow
set splitright
set switchbuf=useopen,usetab
set encoding=utf-8
set wildignore+=*.d,*.o,*.so,*.img,*.tgz,*.o,*.d,*.patch,*.swp,*.zip
set wildignore+=*.so,*.swp,*.zip,*/node_modules/*,*.keep,*.DS_Store

set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set guioptions+=d  "dark menu
set guioptions-=m  "remove menu
"set guioptions-=m  "remove menu bar
set go+=a           " visual selection autocopied to clipboard
set clipboard=unnamedplus

let g:yankring_replace_n_pkey = '<C-p>'
let g:yankring_replace_n_nkey = '<C-o>'
let g:ctrlp_map = ''
let g:ctrlp_cmd = 'CtrlP'
noremap <C-o> :YRReplace 1 p<CR>
nnoremap ,p :YRPop<CR>
"map your keys
"noremap <C-a> :CtrlP /home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/Media/<CR>
" noremap <C-z> :CtrlPBuffer<CR>
noremap <C-z> :Buffers<CR>
" noremap <C-x> :CtrlPMRUFiles<CR>
noremap <C-x> :FZFMru<CR>
"noremap <C-h> :CtrlPBookmarkDir<CR>
"noremap <C-j> :call DmenuOpen("Files")<CR>
" noremap <C-h> :call GetGitFolder("$HOME/GIT/")<CR>
" if has("gui_running")
  " noremap <C-h> :call BrowseFolderGui("$HOME/GIT/")<CR>
  " " noremap <C-j> :call BrowseFolderGui(expand('%:p:h'))<CR>
" else
  " noremap <C-h> :call BrowseFolder("$HOME/GIT")<CR>
  " " noremap <C-j> :call BrowseFolder(expand('%:p:h'))<CR>
" endif
" noremap <C-j> :call GetLastGitFiles()<CR>
let g:defaultTraceText = "printf"
" let g:traceText = "OPERA_ERROR"
noremap <C-l> :call InsertMethodTrace("int")<CR>
vnoremap <C-l> :call InsertMethodTracev("")<CR>
" noremap <C-P> :call InsertMethodTrace("none")<CR>
nnoremap <silent> ,l :call InsertMethodTrace("str")<CR>
nnoremap <silent> ,; :call InsertMethodTrace("none")<CR>
"lock screen
nnoremap <silent> ,ls :call LockScreen()<CR>
nnoremap <silent> ,lsx :call LockScreenx()<CR>
" noremap <C-f> :Files ~/phones_GIT/vobs/<CR>
let g:CommandTFileScanner="find"
"show class details
"open window
let g:asyncrun_open = 9
" nmap <F7> :QFix<CR>
"show header file
":AsyncRun buildParse.sh mainline 34 sip 1

" nmap <F2> :AsyncRun buildParse.sh mainline 34 sip 1 %:p:h<CR>:copen 9<CR>
" nmap <F2> :AsyncRun buildParse.sh mainline 34 sip 1 %:p:h<CR>:wincmd w<CR>
" nmap <F1> :AsyncRun uploadFw.py mainline 120 121
nmap <F1> :call UploadLoadware()<CR>
nmap <F2> :call BuildBind("")<CR>
nmap <F3> :VOBROOT=~/main2/ ~/main2/vobs/Opera_DevTools/scripts/build_and_test_WE3_4_x86.sh
nmap <F4> :AirlineToggleWhitespace<CR>
nmap <F5> :FSSplitLeft<CR>
" nmap <F6> :NERDTreeToggle<CR>
nmap <F6> :Clap yanks<CR>
nmap <F7> :call asyncrun#quickfix_toggle(9)<CR>
nmap <F8> :TagbarToggle<CR>
" nmap <F9> :MundoToggle<CR>
nmap <F9> :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent>,hc :call LanguageClient#textDocument_hover()<CR>
nmap <silent>,hj <plug>(YCMHover)
nmap <F10> :YRShow<CR>
nnoremap <silent> ,yy :YRShow<CR>
" noremap <silent><F11> :call quickmenu#toggle(0)<cr>
noremap <silent><F11> :call ShowExecMenu()<cr>
nnoremap <silent>,mm :call ShowExecMenu()<cr>
nnoremap <silent>,em :call ShowExecMenu()<cr>
nnoremap <silent>,me :call ShowExecMenu()<cr>
nnoremap <F12> :Nuake<CR>
inoremap <F12> <C-\><C-n>:Nuake<CR>
tnoremap <F12> <C-\><C-n>:Nuake<CR>
nnoremap <silent> ,tt :Nuake<CR>
nnoremap <silent> ,y :Clap yanks<CR>
nnoremap <silent> ,,y :YRShow<CR>
nnoremap gp `[v`]
" nmap ,rr  :AsyncRun buildParse.sh mainline 34 sip 1 %:p:h<CR>:copen 10<CR>
" nmap ,ll  :let g:phones="121 122 123" \| let g:branch="mainline"
"nmap <F2> :AsyncRun uploadFw.py mainline 121 122 123<CR>4copen<CR>
"nmap <F9> :match Error /\s\+$/<CR>

" bubble up/down current line
" nmap <C-Up> [e
" nmap <C-Down> ]e
" " bubble selected lines
" vmap <C-Up> [egv
" vmap <C-Down> ]egv
"
" move line good
nnoremap <C-Down> :m .+1<CR>==
nnoremap <C-Up> :m .-2<CR>==
inoremap <C-Down> <Esc>:m .+1<CR>==gi
inoremap <C-Up> <Esc>:m .-2<CR>==gi
" vnoremap <C-Down> :m '>+1<CR>gv=gv
" vnoremap <C-Up> :m '<-2<CR>gv=gv

vmap <C-Up>  <Plug>SchleppUp
vmap <C-Down> <Plug>SchleppDown
vmap <C-Left> <Plug>SchleppLeft
vmap <C-Right>  <Plug>SchleppRight



"switch windows
nnoremap <A-Left> <C-w>h
nnoremap <A-Right> <C-w>l
nnoremap <A-Up> <C-w>k
nnoremap <A-Down> <C-w>j

" nnoremap <C-PageUp> gt
" nnoremap <C-PageUp> gT
nnoremap <C-PageDown> :bn<CR>
nnoremap <C-PageUp> :bp<CR>

" new window
nnoremap <silent> ,nn :enew<CR>
nnoremap <silent> ,ne :enew<CR>


" nnoremap <silent> ,ld :LspDefinition<CR>
" nnoremap <silent> ,lh :LspHover<CR>
" nnoremap <silent> ,ls :LspReferences<CR>
" nnoremap <silent> ,lc :LspCqueryCallers<CR>
" rename files from quicfix window
nnoremap <silent> ,qr :call QfToRename()<CR>
nnoremap <silent> ,qf :CodeQueryFilter !  

" nnoremap <silent> ,lh call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> ,lh call LanguageClient#findLocations({'method':'$ccls/call'})<CR>


" nnoremap <silent> ,cs :CodeQuery Symbol<CR>
" nnoremap <silent> ,cc :CodeQuery Call<CR>
" nnoremap <silent> ,cd :CodeQuery Definition<CR>
"nnoremap <silent> ,cc :call ToggleComment()<CR>
"vnoremap <silent> ,cu :call ToggleComment()<CR>
" noremap  <silent> ,cc :call ToggleComment()<CR>
noremap  <silent> ,cx :call DoToggleComment()<CR>
noremap  <silent> ,cv :call UnToggleComment()<CR>
" :c-r c-w = paste
nnoremap <silent> ,rb :call ReplaceBuffers("n")<CR>
vnoremap <silent> ,rb :call ReplaceBuffers("v")<CR>
nnoremap <silent> ,rp :call ReplacePath("n")<CR>
vnoremap <silent> ,rp :call ReplacePath("v")<CR>
nnoremap <silent> ,sb :call SearchBuffers("n")<CR>
vnoremap <silent> ,sb :call SearchBuffers("v")<CR>
nnoremap <silent> ,sp :call SearchPath("n")<CR>
vnoremap <silent> ,sp :call SearchPath("v")<CR>
" noremap  <silent> ,br :call BufferReplace()<CR>
" noremap  <silent> ,bb :call GrepBuffers()<CR>
" noremap  <silent> ,fr :call FolderReplace()<CR>
" noremap  <silent> ,fg :call FolderGrep()<CR>
"     noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
"     noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" pre enter search and replace string
nnoremap <C-k> :call SearchAndReplace()<CR>
vnoremap <C-k> :call SearchAndReplacev()<CR>
 augroup syntax_hghl
  autocmd Syntax * syn match Error /\s\+$/
  autocmd Syntax * syn match TabWhitespace /[\t]/
  autocmd Syntax * syn match DoubleSpaceAfterPeriod /\.  /" open gvim open file window
augroup END

let &errorformat="%f:%l:%c: %t%*[^:]:%m,%f:%l: %t%*[^:]:%m," . &errorformat
set errorformat-=%f:%l:%m
set errorformat-=%f:%l:\ %t%*[^:]:%m
"v3r5 build message
set errorformat+=%f:%l:\ error:\ %m
let g:asyncrun_auto = "make"

"function GetTagbarMethod()
"  let a = tagbar#currenttag('%s','')
"  return a
"endfunction

"call airline#parts#define_function('testBar', 'GetTagbarMethod')

let g:tagbar_ctags_bin='ctags'
let g:airline#extensions#tagbar#enabled = 1
let g:asyncrun_status = ''
let g:anyUnsavedBuffer = ''
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])
let g:airline_section_error = airline#section#create_right(['%{g:anyUnsavedBuffer}'])
let g:airline_theme='hybrid'
tnoremap <expr> <A-r> '<C-\><C-N>"'.nr2char(getchar()).'pi'

function BuffModified()
    let g:anyUnsavedBuffer = join(filter(range(1,bufnr('$')),'getbufvar(v:val,"&modified")'),"_")
endfunction

augroup ModBuffer
  autocmd!
  autocmd BufLeave,BufWritePost,TextChanged,TextChangedI * execute 'call BuffModified()'
augroup END
"echom getbufvar(1,"")
"https://vim.help/41-write-a-vim-script



" paste in insert mode
" C-r register
" delete in insert mode C-u line C-w word, C-h character
" ga info about characted under cursor
" insert mode C-v {123} insert code of character
"
"cxvw exchange selection word .... another place . to exchange
" open gvim open file window
"noremap <C-o> :breakowse confirm e<CR>
"paste clipboard in insert mode and normal mode
"imap <C-]> <ESC>"+p
"map <C-]> <ESC>"+p
"vnoremap // y/<C-R>"<CR>

"#########################################
"configure plugins



"let g:ctrlp_map = '<c-a>'
"let g:ctrlp_cmd = 'CtrlP /home/martinkolouch/phones_GIT/vobs/Opera_Infrastructure_Services/Media/'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_match_window_reversed=0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](tmp|node_modules)',
  \ 'file': '\v\.(exe|so|dll|o|d)$',
  \ }

"search window on top
"let g:ctrlp_match_window_bottom=1

let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_by_filename = 1
let g:ctrlp_show_hidden = 1


let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag -a -l --nocolor --cc --ccp -g "" %s'
  set grepprg=ag\ --nogroup\ --nocolor
else
  let commonfilter="\.(jpg|bmp|png|jar|7z|zip|tar|gz|tgz|bz|d|o)$"
  let g:ctrlp_user_command = {
    \ 'types': {
      \ 1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others'],
      \ 2: ['.hg', 'hg --cwd %s locate -I .'],
      \ },
    \ 'fallback': 'find %s -type f | grep -Evi "$commonfilter'
    \ }
endif


"set list
"set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
"update time after save in ms
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,space:_

set updatetime=250
"let g:gitgutter_highlight_lines = 1

":set splitright | vnew | r!somecommand
" ma - mark spot
" d'a delete till spot

" q:p paste into command line
" ctrl-r +
" set scrollbind
"To save you a step of yanking, if your cursor is on the word you want to use in Ex, use:
" <ctl-r><ctl-w>
"<ctrl+r>"

"vim -x filename.txt
"set cryptmethod=blowfish


"""""FNC
" toggles the quickfix window.
" replaced by async quick fix method
" let g:jah_Quickfix_Win_Height = 10
" command! -bang -nargs=? QFix call QFixToggle(<bang>0)
" function! QFixToggle(forced)
  " if exists("g:qfix_win") && a:forced == 0
    " cclose
  " else
    " execute "copen " . g:jah_Quickfix_Win_Height
  " endif
" endfunction
" 
" " used to track the quickfix window
" augroup QFixToggle
 " autocmd!
 " autocmd BufWinEnter quickfix let g:qfix_win = bufnr("$")
 " autocmd BufWinLeave * if exists("g:qfix_win") && expand("<abuf>") == g:qfix_win | unlet! g:qfix_win | endif
" augroup END

"ultisnip config
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-tab>"
"noremap <C-i> :call UltiSnips#ExpandSnippet(<CR>
" close preview window after user leaves insert mode
let g:UltiSnipsJumpForwardTrigger = "<Right>"
let g:UltiSnipsJumpBackwardTrigger = "<Left>"
let g:UltiSnipsListSnippets = "<c-t>"
if has("gui_running")
  set lines=999 columns=999
endif

" Show trailing whitespace:
":match ExtraWhitespace /\s\+$/

" Show trailing whitespace and spaces before a tab:
":match ExtraWhitespace /\s\+$\| \+\ze\t/

" Show tabs that are not at the start of a line:
":match ExtraWhitespace /[^\t]\zs\t\+/

" Show spaces used for indenting (so you use only tabs for indenting).
":match ExtraWhitespace /^\t*\zs \+/

"cc<esc> delete line keep linebreak

" gtags
"set cscopetag
"set csprg=gtags-cscope
" cd to root dir where gtags were created
"cs add GTAGS rootdir -a


""""""""""""""""""""""""""
"delete buffers :bd   ;range :1-19bd    ;compeletetion  bd .cpp <c-a>     ;

"
"
"
":syntax match TODOs TODO.*\|.*BUG.*\|.*HACK.*"
"This will match entire lines which contain either TODO, BUG or HACK in them.
"
"Then you can use the highlight command to highlight it.
"
":highlight TODOs ctermbg=red ctermfg=yellow term=bold,italic
"
"
""The command for converting between tabs and spaces is:
"
"change tabs in all file or selection
":retab!
"
"More specifically, to convert tabs to spaces, run:
"
":set expandtab
":retab!
"
"And to convert spaces to tabs, run:
"
":set noexpandtab
":retab!
"
"" Commenting blocks of code.
" augroup filetype_html
"     let b:comment_leader = '// '
"     autocmd!
"     autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
"     autocmd FileType sh,ruby,python   let b:comment_leader = '# '
"     autocmd FileType conf,fstab       let b:comment_leader = '# '
"     autocmd FileType tex              let b:comment_leader = '% '
"     autocmd FileType mail             let b:comment_leader = '> '
"     autocmd FileType vim              let b:comment_leader = '" '
"     noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
"     noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
" augroup END
" run macro on each line
" :'<,'>normal @q
" function! SessionName(...)
    " return g:session_name
" endfunction
" 
 " call airline#add_statusline_func('SessionName')
 " call airline#add_inactive_statusline_func('SessionName')
" 
" call airline#parts#define_function('session_name', 'SessionName')
" let g:airline_section_x = airline#section#create(['session_name'])
" fix molokai cursor disapearing on matching parenthesis
"hi MatchParen      ctermfg=cyan ctermbg=208 cterm=bold
hi MatchParen      ctermfg=208 ctermbg=233 cterm=bold

"just test command system
command! -nargs=1 GetBashResult call BashResult(<f-args>)
function! BashResult(expr)
  let g:res=system("echo $?")
  echom "Got result "g:res
endfunction


" FZF color scheme updater from https://github.com/junegunn/fzf.vim/issues/59
function! s:update_fzf_colors()
  let rules =
  \ { 'fg':      [['Normal',       'fg']],
    \ 'bg':      [['Normal',       'bg']],
    \ 'hl':      [['String',       'fg']],
    \ 'fg+':     [['CursorColumn', 'fg'], ['Normal', 'fg']],
    \ 'bg+':     [['CursorColumn', 'bg']],
    \ 'hl+':     [['String',       'fg']],
    \ 'info':    [['PreProc',      'fg']],
    \ 'prompt':  [['Conditional',  'fg']],
    \ 'pointer': [['Exception',    'fg']],
    \ 'marker':  [['Keyword',      'fg']],
    \ 'spinner': [['Label',        'fg']],
    \ 'header':  [['Comment',      'fg']] }
  let cols = []
  for [name, pairs] in items(rules)
    for pair in pairs
      let code = synIDattr(synIDtrans(hlID(pair[0])), pair[1])
      if !empty(name) && code != ''
        call add(cols, name.':'.code)
        break
      endif
    endfor
  endfor
  let s:orig_fzf_default_opts = get(s:, 'orig_fzf_default_opts', $FZF_DEFAULT_OPTS)
  let $FZF_DEFAULT_OPTS = s:orig_fzf_default_opts .
        \ (empty(cols) ? '' : (' --color='.join(cols, ',')))
endfunction

augroup _fzf
  autocmd!
  autocmd VimEnter,ColorScheme * call <sid>update_fzf_colors()
augroup END

let $FZF_DEFAULT_COMMAND = 'rg --files --follow -g "!{.git,node_modules}/*" 2>/dev/null'

let g:fzf_preview_window="right:30%"

" let g:fzf_preview_window="right:30%"
let g:fzf_preview_window=[]
" let g:ycm_register_as_syntastic_checker = 1 "default 1
" let g:Show_diagnostics_ui = 1 "default 1
" 
" "will put icons in Vim's gutter on lines that have a diagnostic set.
" "Turning this off will also turn off the YcmErrorLine and YcmWarningLine
" "highlighting
" let g:ycm_enable_diagnostic_signs = 1
" let g:ycm_enable_diagnostic_highlighting = 0
" let g:ycm_always_populate_location_list = 1 "default 0
" let g:ycm_open_loclist_on_ycm_diags = 1 "default 1
" 
" 
" let g:ycm_collect_identifiers_from_tags_files = 1 "default 0
" 
" 
" let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)
" let g:ycm_server_log_level = 'info' "default info
" 
" 
" let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'  "where to search for .ycm_extra_conf.py if not found
" let g:ycm_confirm_extra_conf = 1
" 
" 
" let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
" let g:ycm_filetype_whitelist = { '*': 1 }
" 
set clipboard=unnamedplus

" function! MyBalloonExpr()
  " echom "xx"i
  " let l:path = expand('%:p:h')
  " let l:path = substitute(l:path,'vobs.*','','')
  " let l:cspath = l:path . "/vobs/cscope.files"
  " let result = system("cscope -d -f" . l:cspath . " -R -L1" . v:beval_text)
  " echom "xx" . v:beval_text . " " . expand('%:p:h') .  " " . result
  " let macros = {
  " \ 'MACRO' : "MACRO\ndo { something(); } while (0)",
  " \ 'get' : "getMACRO\ndo { something(); } while (0)",
  " \ }
  " return get(macros, v:beval_text, '')
" endfunction
" set bexpr=MyBalloonExpr()
" set ballooneval
" set balloonevalterm
" 
" function! BalloonTest(expr)
  " echom "xx"
  " let l:path = expand('%:p:h')
  " let l:path = substitute(l:path,'vobs.*','','')
  " let l:cspath = l:path . "/vobs/cscope.files"
  " let result = system("cscope -d -f" . l:cspath . " -R -L1" . a:expr)
  " let resultList = split(copy(result),"\n")
  " let l:filename = expand("%:r")
  " echom "filename " . l:filename
  " for xx in resultList
    " echom "_" . xx
    " echom "hit " . xx
    " if (xx =~ l:filename)
      " let macros = {
      " \ v:beval_text : xx,
      " \ }
      " return get(macros,v:beval_text,'')
    " endif
  " endfor
  " echom "xx" . v:beval_text . " " . expand('%:p:h') .  " " . result
  " return get(macros, v:beval_text, '')
" endfunction

" new addons to speec up vim 
set synmaxcol=200
let g:matchparen_timeout = 20
let g:matchparen_insert_timeout = 20

" set cursorline
" set cursorcolumn
set nocursorline
set nocursorcolumn

" set lazyredraw
let g:ycm_min_num_of_chars_for_completion = 3
" let g:ycm_auto_trigger = 0 " you can trigger completetion by C-space
let g:ycm_auto_trigger = 1
" You can use built-in profiling support: after launching vim do
" 
" :profile start profile.log
" :profile func *
" :profile file *
" " At this point do slow actions
" :profile pause
" :noautocmd qall!
" @subjectego :set more | verbose function {function_name} will show you function contents and where it is located.

"make cursor move visible?
highlight Cursor guifg=blue guibg=green
highlight iCursor guifg=blue guibg=green
" set guicursor=n-v-c:block-Cursor
" set guicursor+=i:ver10-iCursor
" set guicursor+=n-v-c:blinkon0
" set guicursor+=i:blinkwait10
set guicursor=n-v-c:block-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175
if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  " let &t_SI = "\<Esc>]12;orange\x7"
  " use a red cursor otherwise
  " let &t_EI = "\<Esc>]12;red\x7"
  let &t_SI .= "\<Esc>[5 q"
  " solid block
  let &t_EI .= "\<Esc>[2 q"
  " silent !echo -ne "\033]12;red\007"
  silent !echo -ne "\033]12;green\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
endif
  " solid underscore
  " let &t_SI .= "\<Esc>[4 q"
  " solid block
  " let &t_EI .= "\<Esc>[2 q"
  " 1 or 0 -> blinking block
  " 3 -> blinking underscore
  " Recent versions of xterm (282 or above) also support
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar
  "
  "
" Disable all blinking:
" :set guicursor+=a:blinkon0
" Remove previous setting:
" :set guicursor-=a:blinkon0
" Restore default setting:
" :set guicursor&

"
let g:hoverInfo=""
function! TestHover()
  echom "start test"
  let g:hoverInfo=""
  let l:servers = filter(lsp#get_whitelisted_servers(), 'lsp#capabilities#has_hover_provider(v:val)')
  if len(l:servers) == 0
    echom "no servers"
    return
  endif

  for l:server in l:servers
      call lsp#send_request(l:server, {
          \ 'method': 'textDocument/hover',
          \ 'params': {
          \   'textDocument': lsp#get_text_document_identifier(),
          \   'position': lsp#get_position(),
          \ },
          \ 'on_notification': function('TestHoverReceive', [l:server]),
          \ })
  endfor

  echo 'Retrieving hover ...'
endfunction

function! TestHoverReceive(server, data) abort
  if lsp#client#is_error(a:data['response'])
    echom "got no answer"
    return
  endif

  if !has_key(a:data['response'], 'result')
    echom "no result"
    return
  endif
  if !empty(a:data['response']['result']) && !empty(a:data['response']['result']['contents'])
    call ProcessData(a:data['response']['result']['contents'])
    return
  endif
endfunction

function! ProcessData(data) abort
     if type(a:data) == type([])
        for l:entry in a:data
            call ProcessData(entry)
        endfor
        return 'markdown'
    endif
    if type(a:data) == type('')
       " echom "type ''"
      let g:hoverInfo=a:data
      echom a:data
    endif
    if type(a:data) == type({}) && has_key(a:data, 'language')
       " echom "type {}"
       " silent put ='```'.a:data.language
       " silent put =a:data.value
       " silent put ='```'
        let g:hoverInfo=a:data.value
        echom a:data.value
    endif
    if type(a:data) == type({}) && has_key(a:data, 'kind')
      " echom "type {}2"
        let g:hoverInfo=a:data.value
        echom a:data.value
        echom "ldata kind " . a:data.kind
        return a:data.kind ==? 'plaintext' ? 'text' : a:data.kind
    endif
  endfunction
  
  
  
let s:timer = -1

function! MyBalloonExpr()
  call TestHover()
  call timer_stop( s:timer )
  let s:message =
          \ 'Cursor is at line ' . v:beval_lnum .
          \', column ' . v:beval_col .
          \ ' of file ' .  bufname(v:beval_bufnr) .
          \ ' on word "' . v:beval_text . '"'
  let s:timer = timer_start( 100, 'RealBalloonExpr' )
endfunction

function! RealBalloonExpr(timer)
  echom 'MyBalloonExpr: ' . g:hoverInfo
  call balloon_show( g:hoverInfo )
endfunction

" set mouse=a
" set ttymouse=sgr
" set balloonexpr=MyBalloonExpr()
" set balloondelay=250
" set ballooneval
" set balloonevalterm
"
"
" :profile start profile.log
":profile func *
":profile file *
" At this point do slow actions
":profile pause
":noautocmd qall!
"
"
""Swap top/bottom or left/right split
" Ctrl+W R
" Ctrl + DIRECTIONS (JHKL) MOVE window
"Ctrl + direction (jhkl) set cursor to window
"swap windows with command :ball , vertical ball
"
"
"
"
"ycm trick
"<S-Insert>i
"" disable auto_triggering ycm suggestions pane and instead
" use semantic completion only on Ctrl+n
" let ycm_trigger_key = '<C-n>'
" let g:ycm_auto_trigger = 0
" let g:ycm_key_invoke_completion = ycm_trigger_key

" this is some arcane magic to allow cycling through the YCM options
" with the same key that opened it.
" See http://vim.wikia.com/wiki/Improve_completion_popup_menu for more info.
" let g:ycm_key_list_select_completion = ['<TAB>', '<C-j>']
" inoremap <expr> ycm_trigger_key pumvisible() ? "<C-j>" : ycm_trigger_key;
"
"
" if !exists("my_auto_commands_loaded")
  " let my_auto_commands_loaded = 1
  " " > 100M
  " let g:LargeFile = 1024 * 1024 * 100
  " augroup LargeFile
    " autocmd BufReadPre * call LargeFiles()
  " augroup END
" endif
" 
  " 
" function! LargeFile()
	" let f=expand('<afile>')
	" if getfsize(f) > g:LargeFile
		" echom 'set large file'
		" set eventignore+=FileType
		" setlocal noswapfile bufhidden=unload undolevels=-1
	" else
		" echom 'unset large file'
		" set eventignore-=FileType
	" endif
" endfunction
"
"
"
"
" maybe try
"
" Text objects
  " Plug 'kana/vim-textobj-user'
  " Plug 'kana/vim-textobj-entire'
  " Plug 'kana/vim-textobj-indent'
  " Plug 'kana/vim-textobj-line'
  " Plug 'kana/vim-textobj-function'
  " Plug 'kana/vim-textobj-fold'
  " Plug 'beloglazov/vim-textobj-quotes'
  " Plug 'kana/vim-textobj-syntax'
  " Plug 'jceb/vim-textobj-uri'
  " Plug 'Julian/vim-textobj-variable-segment'
  " Plug 'Julian/vim-textobj-brace'
" Plug 'adriaanzon/vim-textobj-matchit'
" Wrapping{{{
"
"
"

" Disable spell checking by default
" set nospell
" 
" set spelllang=en
" 
" " Dict with words marked as good/wrong
" set spellfile=~/.vim/spell/dict.utf-8.add
"
"
"
"
"
" do not overwrite git modify signs with error signs - youcompleteme
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 1
let g:airline#extensions#tagbar#flags = 'f'  " show full tag hierarchy
" popup window?
" set completeopt+=popup
" set previewpopup=height:10,width:60
" set completeopt+=preview
" let g:airline#extensions#tabline#enabled = 1
"
"
"
"multi cursor config
"https://github.com/mg979/vim-visual-multi

let g:VM_mouse_mappings             = 1
let g:VM_theme                      = 'iceblue'
let g:VM_highlight_matches          = 'underline'

let g:VM_maps                       = {}
let g:VM_maps["Undo"]               = 'u'
let g:VM_maps["Redo"]               = '<C-r>'

let g:VM_maps["Select l"]           = '<S-Right>'
let g:VM_maps["Select h"]           = '<S-Left>'


set formatoptions+=j " Delete comment character when joining commented lines

" \cg definition
" \cs symbol
" \cd definition
"
" if a:option == '0'
    " let query = input('Assignments to: ')
  " elseif a:option == '1'
    " let query = input('Functions calling: ')
  " elseif a:option == '2'
    " let query = input('Functions called by: ')
  " elseif a:option == '3'
    " let query = input('Egrep: ')
  " elseif a:option == '4'
    " let query = input('File: ')
  " elseif a:option == '6'
    " let query = input('Definition: ')
  " elseif a:option == '7'
    " let query = input('Files #including: ')
  " elseif a:option == '8'
    " let query = input('C Symbol: ')
  " elseif a:option == '9'
  "
  "
" 0 or s: Find this C symbol
" 1 or g: Find this definition
" 2 or d: Find functions called by this function
" 3 or c: Find functions calling this function
" 4 or t: Find this text string
" 6 or e: Find this egrep pattern
" 7 or f: Find this file
" 8 or i: Find files #including this file
" cscope
let g:csPath=""
function! Cscope(option, query)
  let color = '{ x = $1; $1 = ""; z = $3; $3 = ""; printf "\033[34m%s\033[0m:\033[31m%s\033[0m\011\033[37m%s\033[0m\n", x,z,$0; }'
  " let l:path = expand('%:p:h')
  " let l:path = substitute(l:path,'vobs.*','','')
  " let l:cspath = l:path . "/vobs/cscope.files"
  echom "query " . a:query
  echom "path " . g:csPath
  echom "option " . a:option
  echom "path " . g:csPath
  let opts = {
  \ 'source':  "cscope -d -f " . g:csPath . " " . " -L " . "-" . a:option . " " . a:query . " | awk '" . color . "'",
  \ 'options': ['--ansi', '--prompt', '> ',
  \             '--multi', '--bind', 'alt-a:select-all,alt-d:deselect-all',
  \             '--color', 'fg:188,fg+:222,bg+:#3a3a3a,hl+:104'],
  \ 'down': '40%'
  \ }
  echom "opts " . l:opts
  " function! opts.sink(lines)
    " let data = split(a:lines)
    " let file = split(data[0], ":")
    " execute 'e ' . '+' . file[1] . ' ' . file[0]
  " endfunction
  call fzf#run(opts)
endfunction

" Invoke command. 'g' is for call graph, kinda.
nnoremap <silent> ,gg :call Cscope('3', expand('<cword>'))<CR>



augroup exitGr
  au!
  au VimLeave * :call UpdateSession()
augroup END


command! -range=% TR let b:wv = winsaveview() |
            \ keeppattern <line1>,<line2>s/\s\+$// |
            \ call winrestview(b:wv)


" vim clap setup - has cool yank history
hi default link ClapInput   Visual
hi default link ClapDisplay Pmenu
hi default link ClapPreview PmenuSel
hi default link ClapMatches Search

" By default ClapQuery will use the bold fg of Normal and the same bg of ClapInput

hi ClapDefaultPreview          ctermbg=237 guibg=#3E4452
hi ClapDefaultSelected         cterm=bold,underline gui=bold,underline ctermfg=80 guifg=#5fd7d7
hi ClapDefaultCurrentSelection cterm=bold gui=bold ctermfg=224 guifg=#ffd7d7

hi default link ClapPreview          ClapDefaultPreview
hi default link ClapSelected         ClapDefaultSelected
hi default link ClapCurrentSelection ClapDefaultCurrentSelection"


let g:clap_popup_input_delay=0
let g:clap_no_matches_msg="NO MATCHES FOUND"
let g:clap_current_selection_sign={ 'text': '>>', 'texthl': "WarningMsg", "linehl": "ClapCurrentSelection"}
let g:clap_selected_sign={ 'text': ' >', 'texthl': "WarningMsg", "linehl": "ClapSelected"}



"KITTY colors
set termguicolors
let &t_8f = "\e[38;2;%lu;%lu;%lum"
let &t_8b = "\e[48;2;%lu;%lu;%lum"
let &t_ut=''
" set t_Co=256
"
"
" Enable true color support
" if &t_Co >= 256 || has("gui_running")
  " "let g:dracula_italic=0
  " " let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  " " let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
" 
  " if (has("termguicolors"))
    " echom "SET TERMCOL"
    " set termguicolors
  " endif
" endif
