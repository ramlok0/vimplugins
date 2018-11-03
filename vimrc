if has("win64") || has("win32")
  source $VIMRUNTIME/vimrc_example.vim
endif

filetype plugin on


execute pathogen#infect()

let g:quickr_cscope_autoload_db = 0
"allows Highlight plugin to save conf
"set viminfo^=!
" % - restores buffers between sessions
"set viminfo=!,%,<800,'10,/50,:100,h,f0,n~/.vim/cache/.viminfo
set viminfo=!,<800,'10,/50,:100,h,f0,n~/.vim/cache/.viminfo
set cursorline
set cursorcolumn

"allow you to move freely in visual block mode
set virtualedit=block

let g:rainbow_active = 1
"colorscheme desert
colorscheme molokai
" fix molokai cursor disapearing on matching parenthesis
"beforehi MatchParen      ctermfg=cyan ctermbg=208 cterm=bold
"fixhi MatchParen      ctermfg=208 ctermbg=233 cterm=bold
"needs to be at the end of file to take effect

syntax on

"set scrolloff=1

" show the editing mode on the last line
set showmode
"set statusline+=%F
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

set display=lastline


set tags=~/bin/phones.tag
exe "cs add " . "/home/km000057/GIT/mainline/vobs/cscope.files" . " " . " "
" exe "cscope add /home/km000057/phones_GIT/vobs/cscope.files"
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_auto_trigger = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
" let g:ycm_complete_in_strings = 1 " Completion in string
let g:ycm_add_preview_to_completeopt = 1
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/.ycm_extra_conf.py'
" turn off syntax checking
let g:ycm_show_diagnostics_ui = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion = ['<TAB>','<Down>']
let g:ycm_key_list_previous_completion=['<Up>']
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 0

"turn off YMC 
"nnoremap <leader>y :let g:ycm_auto_trigger=0<CR>                " turn off YCM
"nnoremap <leader>Y :let g:ycm_auto_trigger=1<CR>                "turn on YCM

"" SNIPETS
nnoremap ,hfor :-1read $HOME/.vim/bundle/after/snippets/for.txt<CR>f(a


" clever f config
let g:clever_f_smart_case = 1
let g:clever_f_show_prompt = 1

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
  set guifont=Monospace\ 13
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
if has("gui_running")
  noremap <C-h> :call BrowseFolderGui("$HOME/GIT/")<CR>
  noremap <C-j> :call BrowseFolderGui(g:lastSearch)<CR>
else
  noremap <C-h> :call BrowseFolder("$HOME/GIT")<CR>
  noremap <C-j> :call BrowseFolder(g:lastSearch)<CR>
endif
" noremap <C-j> :call GetLastGitFiles()<CR>
let g:traceText = "OPERA_ERROR"
noremap <C-l> :call InsertMethodTrace()<CR>
" noremap <C-f> :Files ~/phones_GIT/vobs/<CR>
let g:CommandTFileScanner="find"
"show class details
nmap <F8> :TagbarToggle<CR>
"open window
let g:asyncrun_open = 9
nmap <F7> :call asyncrun#quickfix_toggle(9)<CR>
" nmap <F7> :QFix<CR>
"show header file
nmap <F5> :FSSplitLeft<CR>
nmap <F4> :AirlineToggleWhitespace<CR>
nmap <F1> :AsyncRun uploadFw.py mainline 120 121
":AsyncRun buildParse.sh mainline 34 sip 1

" nmap <F2> :AsyncRun buildParse.sh mainline 34 sip 1 %:p:h<CR>:copen 9<CR>
" nmap <F2> :AsyncRun buildParse.sh mainline 34 sip 1 %:p:h<CR>:wincmd w<CR>
nmap <F2> :call BuildBind("")<CR>
nmap <F3> :cnext<CR>
" nmap ,rr  :AsyncRun buildParse.sh mainline 34 sip 1 %:p:h<CR>:copen 10<CR>
nmap ,ll  :let g:phones="121 122 123" \| let g:branch="mainline"
"nmap <F2> :AsyncRun uploadFw.py mainline 121 122 123<CR>4copen<CR>
nmap <F9> :MundoToggle<CR>
"nmap <F9> :match Error /\s\+$/<CR>
nmap <F6> :NERDTreeToggle<CR>

" bubble up/down current line
nmap <C-Up> [e
nmap <C-Down> ]e
" bubble selected lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

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
let g:asyncrun_auto = "make"

let g:asyncrun_status = ''
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])

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
let g:jah_Quickfix_Win_Height = 10
command! -bang -nargs=? QFix call QFixToggle(<bang>0)
function! QFixToggle(forced)
  if exists("g:qfix_win") && a:forced == 0
    cclose
  else
    execute "copen " . g:jah_Quickfix_Win_Height
  endif
endfunction

" used to track the quickfix window
augroup QFixToggle
 autocmd!
 autocmd BufWinEnter quickfix let g:qfix_win = bufnr("$")
 autocmd BufWinLeave * if exists("g:qfix_win") && expand("<abuf>") == g:qfix_win | unlet! g:qfix_win | endif
augroup END

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