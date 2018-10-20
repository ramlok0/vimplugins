
function! TraceHighlightSIP()
  Highlight 6 Packet Out.*$
  Highlight 17 From:\|To:\|Refer-To:\|Contact:\|<sip:.\{-}[>;]
  Highlight 5 Packet In.*$
"  Highlight 4 [A-Z]\{-} sip.*$
"  Highlight 7 ^SIP/2.*$
  Highlight 7 ^SIP/2.*\|.*SIP/2.0$\|CSeq:.*
  Highlight 16 m=audio.*$
  Highlight 18 m=video.*$
  Highlight 11 a=rtcp.*$
  Highlight 27 \cerror\|\cwarning\|\cfail
  Highlight 2 o=.*IN.*$\|c=IN.*$
  Highlight 28 VoiceEngine(.\{-}:
  Highlight 29 SIP Sig(.\{-}:
  Highlight 23 MediaControlService.\{-}(.\{-}:
  Highlight 23 SessionController(.\{-}:
endfunction


":highlight - list of available color
" call matchadd('color','expr',-1) "-1 will be overridden by search highlight


" function! TraceXXOnlySipOld()
    " setl foldmethod=expr
    " setlocal foldexpr=((((getline(v:lnum)=~'.*(\\d\\{3,5}):.*$')\|\|(getline(v:lnum-1)=~'.*(\\d\\{3,5}):.*$')\|\|(getline(v:lnum+1)=~'.*(\\d\\{3,5}):.*$'))\&\&(getline(v:lnum)!~'error\\\|warning\\\|invalid\\\|fail'))\|\|((getline(v:lnum)=~'^$')\&\&(getline(v:lnum-1)=~'^$')))?1:0 foldmethod=expr
"setlocal foldexpr=(((getline(v:lnum)=~'.*(\\d\\{3,4}):.*$')\|\|(getline(v:lnum-1)=~'.*(\\d\\{3,4}):.*$')\|\|(getline(v:lnum+1)=~'.*(\\d\\{3,4}):.*$'))\&\&(getline(v:lnum)!~'error\\\|warning\\\|invalid\\\|fail')\&\&((getline(v:lnum)!~a:expr)\|\|(getline(v:lnum-1)!~a:expr)\|\|(getline(v:lnum+1)!~a:expr)) )?1:0 foldmethod=expr

"setlocal foldexpr=(((getline(v:lnum)=~'.*(\\d\\{3,4}):.*$')\|\|(getline(v:lnum-1)=~'.*(\\d\\{3,4}):.*$')\|\|(getline(v:lnum+1)=~'.*(\\d\\{3,4}):.*$'))\&\&(getline(v:lnum)!~'error'))?1:0 foldmethod=expr
"setlocal foldexpr=(getline(v:lnum)=~@/\|\|getline(v:lnum+1)=~@/\|\|getline(v:lnum-1)=~@/)?1:0
"setlocal foldexpr=(getline(v:lnum)!~error)?1:0
    " setl foldminlines=0
    " setl foldlevel=0
    " set foldclose=all
    " setl foldtext=""
    " set fillchars=""
    " call TraceHighlightSIP()
" endfunction


function! TraceSipWith(expr)
  echo a:expr
    setl foldmethod=expr
    setlocal foldexpr=(((getline(v:lnum)=~'.*(\\d\\{3,5}):.*$')\|\|(getline(v:lnum-1)=~'.*(\\d\\{3,5}):.*$')\|\|(getline(v:lnum+1)=~'.*(\\d\\{3,5}):.*$'))\&\&((getline(v:lnum)!~'error\\\|warning\\\|invalid\\\|fail')\&\&(getline(v:lnum)!~a:expr)\&\&(getline(v:lnum-1)!~a:expr)\&\&(getline(v:lnum+1)!~a:expr))\|\|((getline(v:lnum)=~'^$')\&\&(getline(v:lnum-1)=~'^$')))?1:0 foldmethod=expr
"    setlocal foldexpr=(((getline(v:lnum)=~'.*(\\d\\{3,4}):.*$')\|\|(getline(v:lnum-1)=~'.*(\\d\\{3,4}):.*$')\|\|(getline(v:lnum+1)=~'.*(\\d\\{3,4}):.*$'))\&\&(getline(v:lnum)!~'error\\\|warning\\\|invalid\\\|fail')\&\&((getline(v:lnum)!~a:expr)\|\|(getline(v:lnum-1)!~a:expr)\|\|(getline(v:lnum+1)!~a:expr)) )?1:0 foldmethod=expr

" setlocal foldexpr=(((getline(v:lnum)=~'.*(\\d\\{3,4}):.*$')\|\|(getline(v:lnum-1)=~'.*(\\d\\{3,4}):.*$')\|\|(getline(v:lnum+1)=~'.*(\\d\\{3,4}):.*$'))\&\&(getline(v:lnum)!~'error'))?1:0 foldmethod=expr
"    setlocal foldexpr=(getline(v:lnum)=~@/\|\|getline(v:lnum+1)=~@/\|\|getline(v:lnum-1)=~@/)?1:0
"    setlocal foldexpr=(getline(v:lnum)!~error)?1:0
    setl foldminlines=0
    setl foldlevel=0
    set foldclose=all
    setl foldtext=""
    set fillchars=""
    call TraceHighlightSIP()
endfunction




"same as above but does not care about highliting and empty lines
function! TraceShowSipWith(expr)
    echom "hhh"
    echom a:expr
    setl foldmethod=expr
    setlocal foldexpr=(((getline(v:lnum)=~'.*(\\d\\{3,4}):.*$')\|\|(getline(v:lnum-1)=~'.*(\\d\\{3,4}):.*$')\|\|(getline(v:lnum+1)=~'.*(\\d\\{3,4}):.*$'))\&\&(getline(v:lnum)!~'error\\\|warning\\\|invalid\\\|fail')\&\&((getline(v:lnum)!~a:expr)\&\&(getline(v:lnum-1)!~a:expr)\&\&(getline(v:lnum+1)!~a:expr))\|\|(getline(v:lnum)=~'^$'))?1:0 foldmethod=expr


    setl foldminlines=0
    setl foldlevel=0
    set foldclose=all
    setl foldtext=""
    set fillchars=""
    call TraceHighlightSIP()
endfunction


function! TraceOnlySip()
  echom "Test"
    setl foldmethod=expr
    setlocal foldexpr=(((getline(v:lnum)=~':\\(.\\)\\1\\{2\\}.*$')\|\|(getline(v:lnum)=~'^$')\|\|(getline(v:lnum)=~'(\\d\\{3,5}):')\|\|(getline(v:lnum)=~'^\\s'))\&\&((getline(v:lnum)!~'SIP.Messages')\&\&(getline(v:lnum+1)!~'SIP.Messages')\&\&(getline(v:lnum)!~'Packet.[IO]')\&\&(getline(v:lnum)!~'error\\\|warning\\\|invalid\\\|fail')\&\&(getline(v:lnum-1)!~'error\\\|warning\\\|invalid\\\|fail')))?1:0 foldmethod=expr
    setl foldminlines=0
    setl foldlevel=0
    set foldclose=all
    setl foldtext=""
    set fillchars=""
    call TraceHighlightSIP()
endfunction


"remove trailing chars
function! RemoteTrailing()
    :%s/\s\+$//gc
endfunction

function! ShowTrailing()
    highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
    match ExtraWhitespace /\s\+$/
    " Show trailing whitespace and spaces before a tab:
    match ExtraWhitespace /\s\+$\| \+\ze\t/

    " Show tabs that are not at the start of a line:
    :match ExtraWhitespace /[^\t]\zs\t\+/

    " Show spaces used for indenting (so you use only tabs for indenting).
    :match ExtraWhitespace /^\t*\zs \+/
    "show tabs at start
    :match ExtraWhitespace /^\t\+$/
  endfunction




function! TraceThis(expr)
  echo a:expr
    echom "Hclear 1 to remove red highlight, \\\| to add items to search"
    setl foldmethod=expr
    setlocal foldexpr=((getline(v:lnum)!~a:expr))?1:0 foldmethod=expr
    setl foldminlines=0
    setl foldlevel=0
    set foldclose=all
    setl foldtext=""
    set fillchars=""
    call TraceHighlightSIP()
    execute "Highlight" 1 a:expr
endfunction



"must be called with single quotes around regex e.g. 'Sip.*\|Voice.*'
function! TraceHide(expr)
    echom "Hello"
    echom a:expr
    setl foldmethod=expr
"    setlocal foldexpr=((getline(v:lnum)=~a:expr)\|\|(getline(v:lnum-1)=~a:expr)\|\|(getline(v:lnum+1)=~a:expr)\|\|(((getline(v:lnum-1)=~'^$')\&\&(getline(v:lnum)=~'^$'))\|\|(getline(v:lnum+1)=~'^$')\&\&(getline(v:lnum)=~'^$')))?1:0
    setlocal foldexpr=((getline(v:lnum)=~a:expr)\|\|(getline(v:lnum-1)=~a:expr)\|\|(getline(v:lnum+1)=~a:expr)\|\|(((getline(v:lnum-1)=~'^$')\&\&(getline(v:lnum)=~'^$'))\|\|(getline(v:lnum)=~'^$')))?1:0
    setlocal foldmethod=expr
    setl foldminlines=0
    setl foldlevel=0
    set foldclose=all
    setl foldtext=""
    set fillchars=""
    call TraceHighlightSIP()
endfunction


function! TraceKeep(expr)
    echom "Hello"
    echom a:expr
    setl foldmethod=expr
    setlocal foldexpr=((getline(v:lnum)=~a:expr)\|\|(getline(v:lnum-1)=~a:expr)\|\|(getline(v:lnum+1)=~a:expr))?0:1 foldmethod=expr
    setl foldminlines=0
    setl foldlevel=0
    set foldclose=all
    setl foldtext=""
    set fillchars=""
    call TraceHighlightSIP()
endfunction


function! FoldGit()
    let b:baz=expand('%:t')
    let other_signs = []
    redir => signs
      silent execute "sign place file=" . b:baz
    redir END
    for sign_line in filter(split(signs, '\n')[2:], 'v:val =~# "="')
      let components  = split(sign_line)
      let line_number = str2nr(split(components[0], '=')[1])
      echom line_number
      call add(other_signs, line_number)
    endfor
    setl foldmethod=expr
    setlocal foldexpr=(index(other_signs,v:lnum)!=-1)?0:1 foldmethod=expr
"    setlocal foldexpr=(GitIsModified(v:lnum))?0:1 foldmethod=expr
    setl foldminlines=0
    setl foldlevel=0
    set foldclose=all
    setl foldtext=""
    set fillchars=""
endfunction

function! FoldChanges()
    let b:baz=expand('%:t')
    let other_changes = []
    redir => changes
      silent execute "changes"
    redir END
    for change in split(changes, '\n')
      let components  = split(change)
      let line_number = str2nr(components[1])
      if index(other_changes,line_number)<0
         call add(other_changes,line_number)
      endif
    endfor
    setl foldmethod=expr
    setlocal foldexpr=(index(other_changes,v:lnum)!=-1)?0:1 foldmethod=expr
"    setlocal foldexpr=(GitIsModified(v:lnum))?0:1 foldmethod=expr
    setl foldminlines=0
    setl foldlevel=0
    set foldclose=all
    setl foldtext=""
    set fillchars=""
endfunction


function! FoldAll()
    let b:baz=expand('%:p')
    let other_signs = []
    redir => signs
      silent execute "sign place file=" . b:baz
    redir END
    for sign_line in filter(split(signs, '\n')[2:], 'v:val =~# "="')
      let components  = split(sign_line)
      let line_number = str2nr(split(components[0], '=')[1])
      call add(other_signs, line_number)
    endfor
"history changes
    redir => changes
      silent execute "changes"
    redir END
    for change in split(changes, '\n')
      let components  = split(change)
      if (len(components)<2)
        continue
      endif
      let line_number = str2nr(components[1])
      if index(other_signs,line_number)<0
         call add(other_signs,line_number)
      endif
    endfor
    setl foldmethod=expr
    setlocal foldexpr=(index(other_signs,v:lnum)!=-1)?0:1 foldmethod=expr
"    setlocal foldexpr=(GitIsModified(v:lnum))?0:1 foldmethod=expr
    setl foldminlines=0
    setl foldlevel=0
    set foldclose=all
    setl foldtext=""
    set fillchars=""
endfunction









" call TraceHide("physical\\|CallView\\|HealthService\\|Service\\|DnsMgr\\|CodecManager\\|Beatnik")












"http://ricostacruz.com/cheatsheets/vimscript
function! InsertMethodTrace()
  let save_cursor = getpos(".")
 " let xxx = getline(search("^[^ \t#]\\{2}.*[^:]\s*$", 'bW'))
  let xxx = getline(search("^[^ \t#]\\{2}.*\s*$", 'bW'))
"""  call append(str2nr(lnum),"\tOPERA_ERROR(\"xx - " . xxx . " -> \")" )
  call setpos('.', save_cursor)
  execute 'normal o'
  "execute 'normal a' . "\<Tab>" . g:traceText . "(\"xx - " . xxx . " -> \\n\");"
  execute 'normal a' . g:traceText . "(\"xx - " . xxx . " -> \\n\");"
""   execute 'normal l'
"   startinsert
""  call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfunction

function! Tab_Or_Complete()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
        return "\<C-N>"
    else
        return "\<Tab>"
    endif
  endfunction

  "https://devhints.io/vimscript-functions
  "
  "
  "execute with DmenuOpen("Files") to ge folder, select from gits
  "" Strip the newline from the end of a string
function! Chomp(str)
  return substitute(a:str, '\n$', '', '')
endfunction

" Find a file and pass it to cmd
function! DmenuOpen(cmd)
  let curDir = getcwd()
  echo curDir
  let gitDir = Chomp(system("echo -e \"mainline\nmain2\nv3r5\" | dmenu -i -l 20 -p " . a:cmd))
  let fname = Chomp(system("ls -d -1 $HOME/GIT/" . gitDir . "/vobs/*/ | dmenu -i -l 20 -p " . a:cmd))
  if empty(fname)
    return
  endif
  execute a:cmd . " " . fname
endfunction


""
"" open folder with different repos
"" show selection of git subfolders
"" show files

function! GetGitFolder(expr)
  echom a:expr
  echom "xx - GetGitFolder"
  call fzf#run({'source': 'ls -1 -d ' . a:expr . "*/", 'sink': function('GetGitSubFolder')})
endfunction

function! GetGitSubFolder(expr)
  echom a:expr
  echom "xx - GetGitSubFolder"
  echom a:expr
  call fzf#run({'source': 'ls -1 -d ' . a:expr . "/vobs/*/", 'sink': function('GetGitFiles')})
"  Files a:expr<cr>
endfunction

function! GetGitFiles(expr)
  echom a:expr
  echom "xx - GetGitFiles"
  echom a:expr
"   Files a:expr<cr>
  let g:lastGitFiles = a:expr
  let command = 'ag -g "" -f -a --cc --cpp --silent ' . a:expr
  call fzf#run({ 'source': command, 'sink':   'e' })
"    execute "CtrlP" a:expr
endfunction


function! GetLastGitFiles()
  echom "xx - GetLastGitFiles"
  echom "J get git " . g:lastGitFiles
  if !exists("g:lastGitFiles")
"  if exists(g:LastGitFiles) && !empty(g:LastGitFiles)
  echom "J get git 1" . g:lastGitFiles
    call GetGitFolder("$HOME/GIT/")
    return
  endif
"   Files a:expr<cr>
  echom "J get git 2 " . g:lastGitFiles
  let command = 'ag -g "" -f -a --cc --cpp --silent ' . g:lastGitFiles
  echom "J get git 3 " . command
  call fzf#run({ 'source': command, 'sink':   'e' })
"    execute "CtrlP" a:expr
endfunction


command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()
function! QuickfixFilenames()
  " Building a hash ensures we get each buffer only once
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
endfunction


function! SearchAndReplace()
 echom "search and replace"
  let l:currentWord = expand("<cword>")
 " echo "xxx " . l:currentWord
 " echo l:currentWord
 " echo "eeee" .  l:currentWord
"  call feedkeys("iHello\<CR>Universe!")
  call feedkeys(":%s/" . l:currentWord ."//g","t")

endfunction

"grep over all file in dir + auto update
" vimgrep /CurrencyNumberHelper/ app/models/*.rb
" :cfdo s/CurrencyNumberHelper/CurrencyHelper/g | update
"
"
"comment out script
" " source: https://stackoverflow.com/a/24046914/2571881
let s:comment_map = {
    \   "c": '\/\/',
    \   "cpp": '\/\/',
    \   "go": '\/\/',
    \   "java": '\/\/',
    \   "javascript": '\/\/',
    \   "lua": '--',
    \   "scala": '\/\/',
    \   "php": '\/\/',
    \   "python": '#',
    \   "ruby": '#',
    \   "rust": '\/\/',
    \   "sh": '#',
    \   "desktop": '#',
    \   "fstab": '#',
    \   "conf": '#',
    \   "profile": '#',
    \   "bashrc": '#',
    \   "bash_profile": '#',
    \   "mail": '>',
    \   "eml": '>',
    \   "bat": 'REM',
    \   "ahk": ';',
    \   "vim": '"',
    \   "tex": '%',
    \ }

function! ToggleComment()
      if has_key(s:comment_map, &filetype)
        let comment_leader = s:comment_map[&filetype]
      else
        let comment_leader = "#"
      endif
      if getline('.') =~ '^\s*$'
          " Skip empty line
          return
      endif
      if getline('.') =~ '^\s*' . comment_leader
          " Uncomment the line
          execute 'silent s/\v\s*\zs' . comment_leader . '\s*\ze//'
      else
          " Comment the line
          execute 'silent s/\v^(\s*)/\1' . comment_leader . ' /'
      endif
   " else
   "     echo "No comment leader found for filetype"
   " endif
  endfunction

  " \w toggle wrap mode remap keys to go up/down by screen line not enter-end
  " line
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$
noremap <silent> <Leader>w :call ToggleWrap()<CR>
function ToggleWrap()
  if &wrap
    echo "Wrap OFF"
    setlocal nowrap
    set virtualedit=all
    silent! nunmap <buffer> <Up>
    silent! nunmap <buffer> <Down>
    silent! nunmap <buffer> <Home>
    silent! nunmap <buffer> <End>
    silent! iunmap <buffer> <Up>
    silent! iunmap <buffer> <Down>
    silent! iunmap <buffer> <Home>
    silent! iunmap <buffer> <End>
  else
    echo "Wrap ON"
    setlocal wrap linebreak nolist
    set virtualedit=
    setlocal display+=lastline
    noremap  <buffer> <silent> <Up>   gk
    noremap  <buffer> <silent> <Down> gj
    noremap  <buffer> <silent> <Home> g<Home>
    noremap  <buffer> <silent> <End>  g<End>
    inoremap <buffer> <silent> <Up>   <C-o>gk
    inoremap <buffer> <silent> <Down> <C-o>gj
    inoremap <buffer> <silent> <Home> <C-o>g<Home>
    inoremap <buffer> <silent> <End>  <C-o>g<End>
  endif
endfunction

"select by holding shift?

noremap <buffer> <silent> <S-Home>  vg<Home>o<S-Right>o
noremap <buffer> <silent> <S-End>  vg<End>
noremap <buffer> <silent> <S-Up>  vgk
noremap <buffer> <silent> <S-Down>  vgj
inoremap <buffer> <silent> <S-Home>  <C-o>vg<Home>o<S-Right>o
inoremap <buffer> <silent> <S-End>  <C-o>vg<End>
inoremap <buffer> <silent> <S-Up>  <C-o>vgk
inoremap <buffer> <silent> <S-Down>  <C-o>vgj
