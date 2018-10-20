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
"hi MatchParen      ctermfg=cyan ctermbg=208 cterm=bold
hi MatchParen      ctermfg=208 ctermbg=233 cterm=bold

syntax on

"set scrolloff=1

" show the editing mode on the last line
set showmode
"set statusline+=%F
" tell vim to keep a backup file
set backup
"mkdir ~/.vim/.backup ~/.vim/.swp ~/.vim/.undo

let g:gundo_prefer_python3=1

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
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" turn off syntax checking
let g:ycm_show_diagnostics_ui = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

"turn off YMC 
"nnoremap <leader>y :let g:ycm_auto_trigger=0<CR>                " turn off YCM
"nnoremap <leader>Y :let g:ycm_auto_trigger=1<CR>                "turn on YCM

"" SNIPETS
nnoremap ,hfor :-1read $HOME/.vim/bundle/after/snippets/for.txt<CR>f(a


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
set path+=/home/km000057/doc/**,/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/Media/**,/home/km000057/GIT/mainline/vobs/Opera_Platform_Linux/GPAL/GPALMedia/**,/home/km000057/_DWE_/**,**

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
noremap <C-z> :CtrlPBuffer<CR>
noremap <C-x> :CtrlPMRUFiles<CR>
"noremap <C-h> :CtrlPBookmarkDir<CR>
"noremap <C-j> :call DmenuOpen("Files")<CR>
noremap <C-h> :call GetGitFolder("$HOME/GIT/")<CR>
noremap <C-j> :call GetLastGitFiles()<CR>
let g:traceText = "OPERA_ERROR"
noremap <C-l> :call InsertMethodTrace()<CR>
" noremap <C-f> :Files ~/phones_GIT/vobs/<CR>
let g:CommandTFileScanner="find"
"show class details
nmap <F8> :TagbarToggle<CR>
"open window
nmap <F7> :QFix<CR>
"show header file
nmap <F5> :FSSplitLeft<CR>
nmap <F4> :AirlineToggleWhitespace<CR>
nmap <F1> :AsyncRun buildPartial.sh mainline 34 sip 1 %:p:h<CR>5copen<CR>
nmap <F2> :AsyncRun uploadFw.py mainline 121 122 123<CR>4copen<CR>
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
noremap <silent> ,cc :call ToggleComment()<CR>
"     noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
"     noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" pre enter search and replace string
nnoremap <C-k> :call SearchAndReplace()<CR>
 augroup syntax_hghl
  autocmd Syntax * syn match Error /\s\+$/
  autocmd Syntax * syn match TabWhitespace /[\t]/
  autocmd Syntax * syn match DoubleSpaceAfterPeriod /\.  /" open gvim open file window
augroup END

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
let g:jah_Quickfix_Win_Height = 5
command -bang -nargs=? QFix call QFixToggle(<bang>0)
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
