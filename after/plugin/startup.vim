
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
    set  foldclose=all
    setl foldtext=""
    set  fillchars=""
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










"   echom search("^[^ \t#\"].\\{-}.::", 'bW')
"        let methodName_end = getpos(")")[2]
"http://ricostacruz.com/cheatsheets/vimscript
function! InsertMethodTrace()
  let save_cursor = getpos(".")

  " match only c++ ::methods
  "let methodName=getline(search("^[^ \t#\"].\\{-}.::.\\{-}(", 'bW') )
  let methodName=getline(search("^[^ \t#\"].\\{-}(", 'bW') )
  let arg_pos=match(methodName,"(")
  let output=methodName[0:arg_pos-1]
  let output=substitute(output,'\/', '', '' )
echom "xx"output
"""  call append(str2nr(lnum),"\tOPERA_ERROR(\"xx - " . xxx . " -> \")" )
  call setpos('.', save_cursor)
  execute 'normal o'
  "execute 'normal a' . "\<Tab>" . g:traceText . "(\"xx - " . xxx . " -> \\n\");"
  execute 'silent s/\v^(\s*)/\1' . g:traceText . '(\"xx - ' . output . ' -> \\n\");'
  " execute 'normal a' . g:traceText . "(\"xx - " . output . " -> \\n\");"
   execute 'normal l'
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
" function! Chomp(str)
  " return substitute(a:str, '\n$', '', '')
" endfunction
" 
" " Find a file and pass it to cmd
" function! DmenuOpen(cmd)
  " let curDir = getcwd()
  " echo curDir
  " let gitDir = Chomp(system("echo -e \"mainline\nmain2\nv3r5\" | dmenu -i -l 20 -p " . a:cmd))
  " let fname = Chomp(system("ls -d -1 $HOME/GIT/" . gitDir . "/vobs/*/ | dmenu -i -l 20 -p " . a:cmd))
  " if empty(fname)
    " return
  " endif
  " execute a:cmd . " " . fname
" endfunction
" 

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
  " let command = 'ag -g "" -f -a --cc --cpp --silent ' . a:expr
  let command = 'ag -l --nocolor -g "cpp|\.h|makefile|\.txt" -f -a --silent ' . a:expr
  call fzf#run({ 'source': command, 'sink':   'e' })
"    execute "CtrlP" a:expr
endfunction


let g:lastSearch=""
let g:searchFor="dir"
function! BrowseFolderGui(expr)
  echom "brownse gui search for "a:expr
  let a:search=a:expr
  if a:search == "" || a:search == "."
    let a:search="~/"
  endif
  if g:searchFor == "dir"
    " echom "search dir"
    let command = 'find ' . a:search . ' -maxdepth 3 -type d -and \( -not -path "*\.*" \) -and \( -not -path ' . a:search . ' \) | sort'
    " let command = 'ls -1 -d ' . a:search . '/*/'
  elseif g:searchFor == "file"
    echom "search file gui"
    " let command = 'ag -l --nocolor -g "cpp|\.h|makefile|\.txt" -f -a --silent ' . g:lastSearch
    " let command = 'ag -l --nocolor -g "cpp|\.h|makefile|\.txt|\.sh|\.py" -f -a --silent ' . a:search
    let command = 'fd . -t f -E *.d -E *.o -E *.dep -E *.so -E *.jpg -E *.png -E *.bmp  -I -c never ' . a:search
  else
    echom "search default gui"
    let command = 'ls -1 -d ' . a:search . '/*/'
  endif
  echom "command gui "command
  if g:searchFor == "file"
    call fzf#run({'source': command, 'sink*': function('GetOutputGui'), 'options': '--expect=ctrl-x,ctrl-f,ctrl-d --multi'})
    " let a:search = fzf#run({'source': command, 'options': '--expect=ctrl-x,ctrl-f,ctrl-d --multi'})
  else
    call fzf#run({'source': command, 'sink*': function('GetOutputGui'), 'options': '--expect=ctrl-x,ctrl-f,ctrl-d'})
    " let a:search = fzf#run({'source': command, 'options': '--expect=ctrl-x,ctrl-f,ctrl-d'})
  endif
  echom "end browse forder gui command "command
endfunction

let g:taskDone=""
function! GetOutputGui(expr)
  if type(a:expr) == 3
    echom "getoutput gui >"join(a:expr)"<"
  else
    echom "GetOutput Gui >"a:expr"<"
  endif
  let a:search=a:expr
  if !empty(a:search)
    if type(a:search) == 3
      if a:search[0] == "ctrl-x"
        if len(a:search) == 1
          let a:search=g:lastSearch
          let a:search=fnamemodify(a:search,':h')
        elseif !isdirectory(a:search[1])
          let a:search=g:lastSearch
          let a:search=fnamemodify(a:search,':h')
        else
          " echom "ctlr xhit on dir here "a:search[1]
          let a:search=fnamemodify(a:search[1],':h')
          let a:search=fnamemodify(a:search,':h')
        endif
        " echom "ctrlx - search again for got back to "a:search
        let g:lastSearch=a:search
        call BrowseFolderGui(a:search)
        return
      elseif a:search[0] == "ctrl-f"
        if len(a:search) == 1
          " echom " ctrl f hit on no result"
          " echom "ctrl f search "g:lastSearch
          let a:search=g:lastSearch
        else
          " echom "ctrl f search "g:lastSearch
          " echom "ctrl f search "a:search[1]
          let a:search=g:lastSearch
        endif
        let g:searchFor="file"
        call BrowseFolderGui(a:search)
        return
      elseif a:search[0] == "ctrl-d"
        if len(a:search) == 1
          let a:search=g:lastSearch
        elseif !isdirectory(a:search[1])
          echom "show dir for file got "a:search[1]
          let a:search=fnamemodify(a:search[1],':h')
          let g:lastSearch=a:search
        else
          let a:search=g:lastSearch
        endif
        let g:searchFor="dir"
        echom "ctrl-d call brownse gui "a:search
        call BrowseFolderGui(a:search)
        return
      else
        " echom "elsex "a:expr[0]
        " echom "elsex "len(a:expr)
        " echom "elsex "join(a:expr)
        let g:lastSearch=a:search[1]
        if isdirectory(a:search[1])
          let a:search=a:search[1]
          call BrowseFolderGui(a:search)
          return
        else
          if !empty(a:search)
            set cmdheight=2
            let g:lastSearch=fnamemodify(a:search[0],':h')
            for data in a:search
              echom "open "data
              exe "e " . data
            endfor
            set cmdheight=1
          endif
        endif
        " echom "XXXX not type 3 "a:expr
      endif
    else
      echom "not type 3"
    endif
  endif
endfunction


function! GetJustFolders(expr)
  echom a:expr
  echom "xx - GetGitSubFolder"
  echom a:expr
  call fzf#run({'source': 'ls -1 -d ' . a:expr . "/vobs/*/", 'sink': function('GetGitFiles')})
"  Files a:expr<cr>
endfunction


let g:lastSearch=""
function! BrowseFolderGuix(expr)
  let a:search=""
  echom "BrowseFolderGui "a:expr
    call fzf#run({'source': 'ls -1 -d ' . a:expr . '/*/', 'sink*': function('GetOutputGui'), 'options': '--expect=ctrl-x,ctrl-f'})
endfunction

let g:taskDone=""
function! GetOutputGuix(expr)
  if type(a:expr) == 3
    echom ">"join(a:expr)"<"
  else
    echom "GetOutputGui >"a:expr"<"
  endif
  if !empty(a:expr)
    if type(a:expr) == 3
      if a:expr[0] == "ctrl-x"
        echom "got ctrl x"
        let a:search=fnamemodify(g:previousSearch,':h')
        let a:search=fnamemodify(a:search,':h')
        let g:previousSearch=a:search
        call BrowseFolderGui(a:search)
        return
      elseif a:expr[0] == "ctrl-f"
        echom "got ctrl f"
        " let a:previousSearch=a:expr[1]
        " let command = 'ag -l --nocolor -g "cpp|\.h|makefile|\.txt" -f -a --silent ' . a:expr[1]
        let command = 'ag -l --nocolor -g "cpp|\.h|makefile|\.txt" -f -a --silent ' . g:previousSearch
        call fzf#run({ 'source': command, 'sink':   'e' })
        return
      else
        echom "elsex "a:expr[0]
        echom "elsex "len(a:expr)
        echom "elsex "join(a:expr)
        let g:previousSearch = a:expr[1]
        call BrowseFolderGui(a:expr[1])
        return
      endif
    else
      echom "not type 3"
    endif
  else
    echom "empty?"
  endif
  return
endfunction


let g:lastSearch=""
let g:searchFor="dir"
function! BrowseFolder(expr)
  let a:search=a:expr
  if empty(a:search)
    let a:search=g:lastSearch
  endif
  let g:lastSearch=a:search
  while 1
    " echom "search for "a:search
    " echom "search for "g:searchFor
    if a:search == "" || a:search == "."
      let a:search="$HOME"
    endif
    if g:searchFor == "dir"
      " echom "search dir"
      let command = 'find ' . a:search . ' -maxdepth 3 -type d -and \( -not -path "*\.*" \) -and \( -not -path ' . a:search . ' \) | sort'
      " let command = 'ls -1 -d ' . a:search . '/*/'
    elseif g:searchFor == "file"
      echom "search file"
      " let command = 'ag -l --nocolor -g "cpp|\.h|makefile|\.txt" -f -a --silent ' . g:lastSearch
      " let command = 'ag -l --nocolor -g "cpp|\.h|makefile|\.txt|\.sh|\.py" -f -a --silent ' . a:search
      let command = 'fd . -t f -E *.d -E *.o -E *.dep -E *.so -E *.jpg -E *.png -E *.bmp  -I -c never ' . a:search 
    else
      echom "search default"
      let command = 'ls -1 -d ' . a:search . '/*/'
    endif
      " call fzf#run({ 'source': command, 'sink':   'e' })
    " echom "command "command
    if g:searchFor == "file"
      let a:search = fzf#run({'source': command, 'options': '--expect=ctrl-x,ctrl-f,ctrl-d --multi'})
    else
      let a:search = fzf#run({'source': command, 'options': '--expect=ctrl-x,ctrl-f,ctrl-d'})
    endif
    if !empty(a:search)
      " echom "got dir result"join(a:search)
      if a:search[0] == "ctrl-x"
        if len(a:search) == 1
          echom "hit on no result  use last search "g:lastSearch
          let a:search=g:lastSearch
          let a:search=fnamemodify(a:search,':h')
          echom "hit on no result  use last search reduced "a:search
        elseif !isdirectory(a:search[1])
          echom "ctrlx hit on file"
          let a:search=g:lastSearch
          let a:search=fnamemodify(a:search,':h')
        else
          echom "ctlr xhit on dir here "a:search[1]
          let a:search=fnamemodify(a:search[1],':h')
          let a:search=fnamemodify(a:search,':h')
        endif
        echom "ctrlx - search again for got back to "a:search
        let g:lastSearch=a:search
        continue
      elseif a:search[0] == "ctrl-f"
        if len(a:search) == 1
          " echom " ctrl f hit on no result"
          " echom "ctrl f search "g:lastSearch
          let a:search=g:lastSearch
        else
          " echom "ctrl f search "g:lastSearch
          " echom "ctrl f search "a:search[1]
          let a:search=g:lastSearch
        endif
        let g:searchFor="file"
        continue
      elseif a:search[0] == "ctrl-d"
        if len(a:search) == 1
          let a:search=g:lastSearch
        elseif !isdirectory(a:search[1])
          echom "show dir for file got "a:search[1]
          let a:search=fnamemodify(a:search[1],':h')
          let g:lastSearch=a:search
        else
          let a:search=g:lastSearch
        endif
        let g:searchFor="dir"
        continue
      endif
      let g:lastSearch=a:search[1]
      if isdirectory(a:search[1])
        let a:search=a:search[1]
        continue
      endif
    endif
    break
  endwhile
  if !empty(a:search)
    set cmdheight=2
    let g:lastSearch=fnamemodify(a:search[0],':h')
    for data in a:search
      exe "e " . data
    endfor
    set cmdheight=1
  endif
endfunction

let g:lastSearchx=""
function! BrowseFolderx(expr)
  let a:search=a:expr
  echom "search for "a:search
  if empty(a:search)
    let a:search="$HOME"
  endif
  let a:previousSearch=a:search
  while 1
    echom "search for "a:search
    let a:dirs = system("ls -1 -d " . a:search . '/*/')
    " let a:dirs=split(a:dirs)
    " if len(a:dirs) == 1 " auto open single folder directory
      " let a:search=join(a:dirs)
      " echom "just one "a:search
      " continue
    " endif
    " let a:search = fzf#run({'source': 'ls -1 -d ' . a:search . '/*/', 'sink*': function('GetOutput'), 'options': '--expect=ctrl-x'})
    let a:search = fzf#run({'source': 'ls -1 -d ' . a:search . '/*/', 'options': '--expect=ctrl-x,ctrl-f'})
    if !empty(a:search)
      echom "got dir result"join(a:search)
      if a:search[0] == "ctrl-x"
        let a:search=fnamemodify(a:previousSearch,':h')
        let a:search=fnamemodify(a:search,':h')
        let a:previousSearch=a:search
        continue
      elseif a:search[0] == "ctrl-f"
        echom "ctrl f search "a:previousSearch
        let a:search=a:previousSearch
        echom "hit on ctrlf "a:previousSearch
        break
      endif
      let a:previousSearch=a:search[1]
      let a:search=a:previousSearch
      continue
    endif
    break
  endwhile
  let g:lastSearch=a:previousSearch
  let command = 'ag -l --nocolor -g "cpp|\.h|makefile|\.txt" -f -a --silent ' . a:previousSearch
  call fzf#run({ 'source': command, 'sink':   'e' })
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
  " let command = 'ag -g "" -f -a --cc --cpp --silent ' . g:lastGitFiles
  let command = 'ag -l --nocolor -g "cpp|\.h|makefile|\.txt" -f -a --silent ' . g:lastGitFiles
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
  call feedkeys(":,$s/" . l:currentWord ."//gc","t")

endfunction

function! SearchAndReplacev() range
  echom "mode "mode()
    if mode()=="v"
        let [line_start, column_start] = getpos("v")[1:2]
        let [line_end, column_end] = getpos(".")[1:2]
        " echom join(getpos("."))
        " echom join(getpos("v"))
    else
        let [line_start, column_start] = getpos("'<")[1:2]
        let [line_end, column_end, column_extra] = getpos("'>")[1:3]
        " echom join(getpos("'<"))
        " echom join(getpos("'>"))
    end
    " getpos gets extra param for end '> if line is too short,
    " if highlight goes from back to from column start end need to be switched
    if column_extra != 0
      let l:colsum=column_end+column_extra
      if l:colsum>column_start
        let l:width=(column_end+column_extra)-column_start-1
        " echom "lwidth1_"l:width
      else
        let l:width=column_start-(column_end+column_extra)-1
        let column_start=l:colsum
        " echom "lwidth2_"l:width
      endif
    else
      if column_end>column_start
        let l:width=column_end-column_start-1
        " echom "lwidth3_"l:width
      else
        let l:width=column_start-column_end-1
        let column_start=column_end
        " echom "lwidth4_"l:width
      endif
    endif
    let line0 = getline(line_start)
    if len(line0) == 0
            return ''
    endif
    let replacement=""
    call inputsave()
    let a:replacement = input('Enter replacement:')
    call inputrestore()
    if empty(a:replacement)
      let a:replacement = line0[column_start - 1: column_start + l:width]
    endif
"     " let l:currentWord = substitute(@*, '\n', '', 'g')
    if (line_start != line_end )
      call feedkeys(":'<,'> s/" . a:replacement ."//gc","t")
    else
      call feedkeys(":,$s/" . a:replacement ."//gc","t")
    endif
endfunction


function! GetVisualSelectionText() range
    if mode()=="v"
        let [line_start, column_start] = getpos("v")[1:2]
        let [line_end, column_end] = getpos(".")[1:2]
        " echom join(getpos("."))
        " echom join(getpos("v"))
    else
        let [line_start, column_start] = getpos("'<")[1:2]
        let [line_end, column_end, column_extra] = getpos("'>")[1:3]
        " echom join(getpos("'<"))
        " echom join(getpos("'>"))
    end
    " getpos gets extra param for end '> if line is too short,
    " if highlight goes from back to from column start end need to be switched
    if column_extra != 0
      let l:colsum=column_end+column_extra
      if l:colsum>column_start
        let l:width=(column_end+column_extra)-column_start-1
        " echom "lwidth1_"l:width
      else
        let l:width=column_start-(column_end+column_extra)-1
        let column_start=l:colsum
        " echom "lwidth2_"l:width
      endif
    else
      if column_end>column_start
        let l:width=column_end-column_start-1
        " echom "lwidth3_"l:width
      else
        let l:width=column_start-column_end-1
        let column_start=column_end
        " echom "lwidth4_"l:width
      endif
    endif
    let line0 = getline(line_start)
    let linex = getline(line_end)
    if len(line0) == 0
            return ''
    endif
    let l:currentWord = line0[column_start - 1: column_start + l:width]
"     " let l:currentWord = substitute(@*, '\n', '', 'g')
    return l:currentWord
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

function! UnToggleComment()
      if has_key(s:comment_map, &filetype)
        let comment_leader = s:comment_map[&filetype]
      else
        let comment_leader = "#"
      endif
      execute 'silent s/\v\s*\zs' . comment_leader . '\s*\ze//e'
endfunction

function! DoToggleComment()
      if has_key(s:comment_map, &filetype)
        let comment_leader = s:comment_map[&filetype]
      else
        let comment_leader = "#"
      endif
      " comment the line
      execute 'silent s/\v^(\s*)/\1' . comment_leader . ' /'
endfunction

  " \w toggle wrap mode remap keys to go up/down by screen line not enter-end
  " line
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$
noremap <silent> <Leader>w :call ToggleWrap()<CR>
function! ToggleWrap()
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




function! Getvisualselection()
  try
    let a_save = @a
    normal! gv"ay
    let l:xxxx = @a
    echom l:xxxx
    return @a
  finally
    let @a = a_save
  endtry
endfunction



function! VisualSelection()
    if mode()=="v"
        let [line_start, column_start] = getpos("v")[1:2]
        let [line_end, column_end] = getpos(".")[1:2]
    else
        let [line_start, column_start] = getpos("'<")[1:2]
        let [line_end, column_end] = getpos("'>")[1:2]
    end
    if (line2byte(line_start)+column_start) > (line2byte(line_end)+column_end)
        let [line_start, column_start, line_end, column_end] =
        \   [line_end, column_end, line_start, column_start]
    end
    let lines = getline(line_start, line_end)
    if len(lines) == 0
            return ''
    endif
    let lines[-1] = lines[-1][: column_end - 1]
    let lines[0] = lines[0][column_start - 1:]
    let l:test = join(lines, "\n")
    echom l:test
    echom join(lines,"\n")
    return l:test
    " return join(lines, "\n")
endfunction


" managing sessions
" Creates a session
let g:session_name=""
function! SaveSession(name)
  let b:sessiondir = $HOME . "/.vim/sessions/"
  if (filewritable(b:sessiondir) != 2)
    exe 'silent !mkdir -p ' b:sessiondir
    redraw!
  endif
  if empty(a:name)
    let b:sessionfile = b:sessiondir . 'session.vim'
    let g:session_name = a:name
  else
    let b:sessionfile = b:sessiondir . a:name
    let g:session_name = a:name
  endif
  echom b:sessionfile
  exe "mksession! " . b:sessionfile
endfunction

" Updates a session, BUT ONLY IF IT ALREADY EXISTS
" (bufnr("$") == 1) nr of last buffer
function! UpdateSession()
  " echom bufnr("$")
  if empty(g:session_name)
    echom "No update - session not set"
    return
  elseif (len(getbufinfo({'buflisted':1})) == 1)
    echom "No opened buffers"
    return
  endif
  let b:sessiondir = $HOME . "/.vim/sessions/"
  let b:sessionfile = b:sessiondir . g:session_name
  if (filereadable(b:sessionfile))
    exe "mksession! " . b:sessionfile
    echo "updating session"
  else
    echom "failed to update session file"
  endif
endfunction

" Loads a session if it exists
function! LoadSession(filename)
  if !empty(g:session_name)
    echom "Do you want to close previous session?i (y/n)"
    while 1
      " let choice = inputlist(['1. yes','2. no'])
      let choice = nr2char(getchar())
      if tolower(choice) != "y" && tolower(choice) != "n"
        " redraw!
        continue
      elseif tolower(choice) == "y"
        exe 'call UpdateSession()'
        exe '%bd'
        break
      else
        break
      endif
    endwhile
  endif
  if empty(a:filename)
    let g:session_name = "session.vim"
  else
    let g:session_name = a:filename
  endif
  let b:sessiondir = $HOME . "/.vim/sessions/"
  let b:sessionfile = b:sessiondir . g:session_name
  if (filereadable(b:sessionfile))
    exe 'source ' b:sessionfile
  else
    echo "No session loaded."
    let g:session_name = ""
  endif
endfunction

augroup exitGr
  au VimLeave * :call UpdateSession()
augroup END



function! SessionsCompletion(ArgLead, CmdLine, CursorPos)
    echom "MyComp called"
    return filter(systemlist("ls ~/.vim/sessions/"), 'v:val =~ a:ArgLead')
endfunction

" command! -nargs=1 -complete=customlist,MyComp LoadSession call MyFunc(<f-args>)
command! -nargs=1 -complete=customlist,SessionsCompletion LoadSession call LoadSession(<f-args>)
command! -nargs=1 -complete=customlist,SessionsCompletion SaveSession call SaveSession(<f-args>)


function! SessionName(...)
     return g:session_name
endfunction
call airline#parts#define_function('session_name', 'SessionName')
call airline#parts#define_accent('session_name', 'orange')
" let g:airline_section_x = airline#section#create_right(['tagbar', 'gutentags', 'grepper','filetype','session_name'])
" let g:airline_section_x = airline#section#create_right(['tagbar', 'gutentags', 'grepper','session_name'])
let g:airline_section_y = airline#section#create_right(['ffenc','session_name'])

function! BufferGrep()
  let currBuff=bufnr("%")
  execute ":cexpr []"
  let l:currentWord = expand("<cword>")
  execute "bufdo vimgrepadd! /" . l:currentWord . "/j %"
  execute 'buffer ' . currBuff
  echom "done"
endfunction

function! BufferReplace()
  let currBuff=bufnr("%")
  let l:currentWord = expand("<cword>")
  "bufdo %s/" . l:currentWord . "//gec"
  call feedkeys(":bufdo %s/" . l:currentWord . "//gec","t")
  execute 'buffer ' . currBuff
endfunction
" bufdo %s/word//gec | update
" bufdo %s/test/chichi/gec
"
"" fill guickfix with files and run search and replace on them
function! FolderGrep()
  let currBuff=bufnr("%")
  let l:currentWord = expand("<cword>")
  call feedkeys(":vimgrepadd /" . l:currentWord . "/j *","t")
endfunction

" replace in quickfix window
function! FolderReplace()
  let currBuff=bufnr("%")
  let l:currentWord = expand("<cword>")
  call feedkeys(":cfdo %s/" . l:currentWord . "//gc","t")
endfunction
" cxc cancel, cxx line cxiw inner word, X in visual mode
"
"fill quick fix and replace
function! FolderReplaceIn()
  let currBuff=bufnr("%")
  let l:currentWord = expand("<cword>")
  let cmd = input("","vimgrepadd /" . l:currentWord . "/j *")
  exe cmd
  let cmd = input("","cfdo %s/" . l:currentWord . "//gc")
  exe cmd
endfunction

" function! Test()
  " let cmd = input("", "call FileTypeToggle(\"\")\<left>\<left>")
  " exe cmd
" endfunction


function! Ttt()
  let a=["11","22","33","44","11"]
  echom join(a)
  " call sort(a, function("Strcmp"))
  let b=uniq(sort(a))
  echom join(b)
endfunction

let g:grepTarget="files"
function! ReplacePath(expr)
  let g:grepTarget="dir"
  call ReplaceBuffers(a:expr)
endfunction

let g:grepTarget="files"
function! ReplaceBuffers(expr)
  let searchTerm=""
  if a:expr == "n" || a:expr == ""
    let searchTerm=expand("<cword>")
  elseif a:expr == "v"
    let searchTerm = GetVisualSelectionText()
  else
    let searchTerm = a:expr
  endif
  call inputsave()
  let a:input = input('Enter search string <' . searchTerm .'>:')
  call inputrestore()
  if !empty(a:input)
    let searchTerm=a:input
  endif
  if (empty(searchTerm))
    return
  endif
  let bufnrs = filter(range(1,bufnr('$')),'bufexists(v:val)')
  " let bufnames = join(map(bufnrs,'expand("#".v:val.":p:h")."/"'), " " )
  let bufnames=[]
  if g:grepTarget=="files"
    let bufnames = map(bufnrs,'expand("#".v:val.":p")')
  else
    let bufnames = map(bufnrs,'expand("#".v:val.":p:h")."/"')
  endif
  let setnames = uniq(sort(bufnames))
  let bufnames = filter(setnames,'!empty(glob(v:val))')
  let bufnames = join(bufnames," ")
  " let bufnames = join(map(bufnrs,'expand("#".v:val.":p")'), " " ) " all
  " files
  " let bufnames = bufnames . " " .expand('%:p:h'). "/*"
  " let setBufNames = uniq(bufnames)
  " echom bufnames
  " echo expand("#3:p")
  " let l:xx = join(map(filter(copy(range(1, bufnr('$'))), 'buflisted(v:val)'), '" ".fnamemodify(bufname(v:val), ":p")'), " ")
  " echom l:xx
  let g:grepTarget="files"
  exe "CtrlSF " . searchTerm . " " . bufnames
endfunction


function! SearchBuffers(expr)
  echom "got input " . a:expr
  let searchTerm=""
  if a:expr == "n" || a:expr == ""
    let searchTerm=expand("<cword>")
  elseif a:expr == "v"
    let searchTerm = GetVisualSelectionText()
  else
    let searchTerm = a:expr
  endif
  call inputsave()
  let a:input = input('Enter search string <' . searchTerm .'>:')
  call inputrestore()
  if !empty(a:input)
    let searchTerm=a:input
  endif
  if (empty(searchTerm))
    echom "nothing to search for"
    return
  endif
  let searchTerm = substitute( searchTerm, " ","\\\\ ", "g")
  exe "Back! -Q " . searchTerm
endfunction


function! SearchPath(expr)
  echom "got input " . a:expr
  let searchTerm=""
  if a:expr == "n" || a:expr == ""
    let searchTerm=expand("<cword>")
  elseif a:expr == "v"
    let searchTerm = GetVisualSelectionText()
  else
    let searchTerm = a:expr
  endif
  if (empty(searchTerm))
    echom "nothing to search for"
    return
  endif
  let currentPath=expand('%:p:h')
  if empty(glob(currentPath))
    let currentPath="$HOME/"
  endif
  let searchTerm = substitute( searchTerm, " ","\\\\ ", "g")
  " let cmd = input("",":Ack -Q " . searchTerm . " " . currentPath)
  call feedkeys(":Ack! -Q " . searchTerm . " " . currentPath,"t")
endfunction

" all scripts exit with make exit code (vagrant->local buildScript -> asyncRes
" code)
function! BuildBind(expr)
  exe "AsyncRun -post=UploadFw() buildParse.sh mainline 34 sip 1 %:p:h"
  exe "wincmd w"
endfunction

command! -nargs=1 UploadFw call UploadFw()
function! UploadFw()
  echom "Status "g:asyncrun_code
  " let nrOfErrors=len(filter(getqflist(),'v:val.valid'))
  if g:asyncrun_code == 0
    echom "trigger phones"
    exe "AsyncRun uploadFw.py mainline 120 121"
  else
    echom "check logs"
    exe "cnext"
  endif
endfunction


function! RemoveLineFromQuickFix( line )
  let l:line = a:line - 1
  call setqflist( filter( getqflist(), "v:key['lnum'] != l:line" ) )
endfunction

function! RemoveSameBuffersFromQuickFix( line )
  let l:line = a:line - 1
  call setqflist( filter( getqflist(), "v:key['lnum'] != l:line" ) )
endfunction
