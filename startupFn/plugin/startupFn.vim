
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

"better way
"hi JapaneseStringHighlight guibg=#FDF6E3 guifg=#D33682
" match JapaneseStringHighlight "[^\x00-\x7F]"

" highlight LOL ctermbg=red
" call matchadd("LOL", "this")

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
    setlocal foldexpr=(((getline(v:lnum)=~'.*(\\d\\{3,4}):.*$')\|\|(getline(v:lnum-1)=~'.*(\\d\\{3,4}):.*$')\|\|(getline(v:lnum+1)=~'.*(\\d\\{3,4}):.*$'))\&\&((getline(v:lnum)!~'error\\\|warning\\\|invalid\\\|fail')\&\&(getline(v:lnum-1)!~'error\\\|warning\\\|invalid\\\|fail'))\&\&((getline(v:lnum)!~a:expr)\&\&(getline(v:lnum-1)!~a:expr)\&\&(getline(v:lnum+1)!~a:expr))\|\|(getline(v:lnum)=~'^$'))?1:0 foldmethod=expr


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
    setlocal foldexpr=(((getline(v:lnum)=~':\\(.\\)\\1\\{2\\}.*$')\|\|(getline(v:lnum)=~'^$')\|\|(getline(v:lnum)=~'(\\d\\{3,5}):')\|\|(getline(v:lnum)=~'^\\s'))\&\&((getline(v:lnum)!~'SIP.Messages')\&\&(getline(v:lnum+1)!~'SIP.Messages')\&\&(getline(v:lnum)!~'Packet.[IO]')))?1:0 foldmethod=expr
    setl foldminlines=0
    setl foldlevel=0
    set foldclose=all
    setl foldtext=""
    set fillchars=""
    call TraceHighlightSIP()
endfunction

function! TraceSipAndErrors()
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
let g:traceString=""
let g:traceStringPlus=""
function! GetTraceString()
  if !empty(g:traceString)
    return g:traceString
  endif
  let l:traceString=get(g:traceStringFound,expand('%'))
  " echom "previous match? ".l:traceString." ".empty(l:traceString)."<"
  if empty(l:traceString)
    let save_cursor = getpos(".")
    let searchStringPattern="OPERA_.\\{-}(\\|SG_.\\{-}(\\|VCR_.\\{-}\\|GA_.\\{-}("
    let l:traceString=getline(search(l:searchStringPattern ))
    " echom "got line ". l:traceString
    let traceType=matchstr(l:traceString,"OPERA\\|SG\\|VCR\\|GA")
    " echom "got trace ". traceType
    if traceType == "OPERA"
      let l:traceString="OPERA_ERROR"
    elseif traceType=="SG"
      let l:traceString="SG_ERROR_V"
    elseif traceType=="GA"
      let l:traceString="GA_ERROR"
    elseif traceType=="VCR"
      let l:traceString="VCR_ERR"
    endif
    " echom "got trace ". l:traceString
    if !empty(l:traceString)
      let g:traceStringFound[expand('%:t')]=l:traceString
    else
      let l:traceString=g:defaultTraceText
    endif
    call setpos('.', save_cursor)
  endif
  return l:traceString
endfunction






"   echom search("^[^ \t#\"].\\{-}.::", 'bW')
"        let methodName_end = getpos(")")[2]
"http://ricostacruz.com/cheatsheets/vimscript
let g:traceStringFound={}
function! InsertMethodTrace(expr)
  if a:expr == ""
    let l:traceType="int"
  else
    let l:traceType=a:expr
  endif
    
  let l:currentWord = expand("<cword>")
  if len(l:currentWord) < 3
    let l:currentWord = ""
  endif
  call inputsave()
    let l:param = input( "trace param: <" . l:currentWord . "> " )
  call inputrestore()
  if empty(l:param)
    let l:param=l:currentWord
  elseif len(l:param) == 1
    let l:param=""
  endif
  " echom ">>".len(l:param)
  let l:traceString=GetTraceString()
  let save_cursor = getpos(".")
  " match only c++ ::methods
  let methodName=getline(search("^[^ \t#\"].\\{-} \\{-}.::.\\{-}(", 'bW') )
  " let methodName=getline(search("^[^ \t#\"].\\{-}(", 'bW') )
  let arg_pos=match(methodName,"(")
  let output=methodName[0:arg_pos-1]
  let output=substitute(output,'\/', '', '' )
"""  call append(str2nr(lnum),"\tOPERA_ERROR( \"xx - " . xxx . " -> \" )" )
  call setpos('.', save_cursor)
  let curLine = getpos(".")[1:1]
  let curLine = curLine[0]
  let line=getline(curLine+1)
  " if matchstr(line,'^{') != ""
  " if matchstr(line,"^\\s\\?{") != ""
  if !empty(matchstr(line,"^\\s\\{-}{"))
    call cursor(curLine+1,0)
  endif
  execute 'normal o'
  "test GW_ERROR(
  "execute 'normal a' . "\<Tab>" . g:traceText . "(\"xx - " . xxx . " -> \\n\");"
  " execute 'silent s/\v^(\s*)/\1' . g:traceText . '(\"xx - ' . output . ' -> \\n\");'
  if empty(l:param) || l:param==""
    execute 'normal a' . "\<Tab>" . l:traceString . '("xx - ' . g:traceStringPlus . output . ' -> \n");'
  elseif l:traceType == "str"
    execute 'normal a' . "\<Tab>" . l:traceString . '("xx - ' . g:traceStringPlus . output . ' -> ' . l:param . ' %s \n",' . l:param . '.c_str()' . ');'
  elseif l:traceType == "none"
    execute 'normal a' . "\<Tab>" . l:traceString . '("xx - ' . g:traceStringPlus . output . ' -> ' . l:param . ' \n"' . ');'
  else
    execute 'normal a' . "\<Tab>" . l:traceString . '("xx - ' . g:traceStringPlus . output . ' -> ' . l:param . ' %i \n",' . l:param . ');'
  endif
  " execute 'normal a' . g:traceText . "(\"xx - " . output . " -> \\n\");"
   execute 'normal l'
"   startinsert
""  call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfunction


function! InsertMethodTracev(expr)
  if a:expr == ""
    let l:traceType="int"
  else
    let l:traceType=a:expr
  endif

  let l:traceText=""
  let l:params=""
  let l:currentText=GetVisualSelectionText()
  let l:textList = split( l:currentText, "," )
  for it in l:textList
    let l:test=split(it," ")
    if len(l:test) > 1
      let l:item=l:test[-1]
    else
      let l:item=it
    endif

    if len(l:item) < 3
      continue
    endif
    call inputsave()
      let l:type = input( "item type %(i/s/p): <" . l:item . "> " )
    call inputrestore()
    if empty(l:type)
      let l:type="%i"
    else
      let l:type="%" . l:type
    endif
  " first trace text then params with added c_str if needed
    if empty( l:traceText )
      let l:traceText=l:item . " " . l:type
    else
      let l:traceText=l:traceText . " " . l:item . " " . l:type
    endif
    if l:type == "%s"
      let l:item=l:item . ".c_str()"
    endif
    if empty(l:params)
      let l:params=l:item
    else
      let l:params=l:params . ", " . l:item
    endif
  endfor

  echom "all params " . l:params
  echom "all text " . l:traceText
  let l:traceString=GetTraceString()
  let curLine = getpos(".")[1:1]
  let curLine = curLine[0]
  let line=getline(curLine+1)
  if !empty(matchstr(line,"^\\s\\{-}{"))
    call cursor(curLine+1,0)
  endif
  execute 'normal o'
  if empty(l:params) || l:params==""
    execute 'normal a' . "\<Tab>" . l:traceString . '( "xx - ' . g:traceStringPlus . ' %s __PRETTY_FUNCTION__ \n");'
  elseif l:traceType == "str"
    execute 'normal a' . "\<Tab>" . l:traceString . '( "xx - ' . g:traceStringPlus . '%s -> ' . l:traceText . '\n", __PRETTY_FUNCTION__,' . l:params. ');'
  elseif l:traceType == "none"
    execute 'normal a' . "\<Tab>" . l:traceString . '( "xx - ' . g:traceStringPlus . '%s -> ' . l:traceText . ' \n", __PRETTY_FUNCTION__' . ');'
  else
    execute 'normal a' . "\<Tab>" . l:traceString . '( "xx - ' . g:traceStringPlus . '%s -> ' . l:traceText . ' \n", __PRETTY_FUNCTION__, ' . l:params . ');'
  endif
  " execute 'normal a' . g:traceText . "(\"xx - " . output . " -> \\n\");"
   execute 'normal l'

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
  if a:search == "" || a:search == "." || len(a:search) < 10
    echom "weird a:search" . a:search
    let a:search="~/"
  endif
  if g:searchFor == "dir"
    " echom "search dir"
    let command = 'find ' . a:search . ' -maxdepth 2 -type d -and \( -not -path "*\.*" \) -and \( -not -path ' . a:search . ' \) | sort'
    " let command = 'ls -1 -d ' . a:search . '/*/'
  elseif g:searchFor == "file"
    echom "search file gui"
    " let command = 'ag -l --nocolor -g "cpp|\.h|makefile|\.txt" -f -a --silent ' . g:lastSearch
    " let command = 'ag -l --nocolor -g "cpp|\.h|makefile|\.txt|\.sh|\.py" -f -a --silent ' . a:search
    let command = 'fd . -t f -E *.d -E *.o -E *.dep -E *.so -E *.jpg -E *.png -E *.bmp  -I -j 4 -c never ' . a:search
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
  echom "GetOutputGui xx"
  if type(a:expr) == 3
    echom "getoutput gui >"join(a:expr)"<"
  else
    echom "GetOutput Gui >"a:expr"<"
  endif
  let a:search=a:expr
  if !empty(a:search)
    if type(a:search) == 3
      if a:search[0] == "ctrl-x"
        let g:searchFor="dir"
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
            let g:searchFor="dir"
            echom "Open " . join(a:search)
            set cmdheight=2
            let g:lastSearch=fnamemodify(a:search[1],':h')
            echom ">g:lastSearch " . g:lastSearch
            for data in a:search
              if !empty(data)
                echom "open >" . data . "<"
                exe "e " . data
              else
                echom "empty data "
              endif
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
  echom "BrowseFolderGuix xx"
  let a:search=""
  echom "BrowseFolderGui "a:expr
    call fzf#run({'source': 'ls -1 -d ' . a:expr . '/*/', 'sink*': function('GetOutputGui'), 'options': '--expect=ctrl-x,ctrl-f'})
endfunction

let g:taskDone=""
function! GetOutputGuix(expr)
  echom "GetOutputGuix xx"
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
    if a:search == "" || a:search == "." || len(a:search) < 10
      let a:search="/home/km000057/GIT/"
    endif
    if g:searchFor == "dir"
      " echom "search dir"
      let command = 'find ' . a:search . ' -maxdepth 3 -type d -and \( -not -path "*\.*" \) -and \( -not -path ' . a:search . ' \) | sort'
      " let command = 'ls -1 -d ' . a:search . '/*/'
    elseif g:searchFor == "file"
      echom "search file"
      " let command = 'ag -l --nocolor -g "cpp|\.h|makefile|\.txt" -f -a --silent ' . g:lastSearch
      " let command = 'ag -l --nocolor -g "cpp|\.h|makefile|\.txt|\.sh|\.py" -f -a --silent ' . a:search
      let command = 'fd . -t f -E *.d -E *.o -E *.dep -E *.so -E *.jpg -E *.png -E *.bmp  -I -j 4 -c never ' . a:search 
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
        let g:searchFor="dir"
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
        " echom "ctrlx - search again for got back to "a:search
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
          " echom "show dir for file got "a:search[1]
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
    let g:lastSearch=fnamemodify(a:search[1],':h')
    for data in a:search
      if empty(data)
        continue
      endif
      exe "e " . data
    endfor
    set cmdheight=1
  endif
  let g:searchFor="dir"
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
  exe "OverCommandLine ,$s/" . l:currentWord ."//gc"
  " call feedkeys(":,$s/" . l:currentWord ."//gc","t")

endfunction

function! SearchAndReplacev() range
  "called from visual mode
  echom "mode "mode()
  let [line_start, column_start] = getpos("'<")[1:2]
  let [line_end, column_end, column_extra] = getpos("'>")[1:3]
  " echom join(getpos("'<"))
  " echom join(getpos("'>"))
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
  if (line_start != line_end )
    echom "use search and replace block method"
    call SearchandreplaceBlock()
    return
  endif
  let line0 = getline(line_start)
  if len(line0) == 0
          return ''
  endif
  let l:replacement=""
  call inputsave()
  let l:replacement = input('Enter replacement:')
  let l:searchString = line0[column_start - 1: column_start + l:width]
  call inputrestore()
  echom "xxx>".l:replacement
"   " let l:currentWord = substitute(@*, '\n', '', 'g')
  exe "OverCommandLine ,$s/" . l:searchString . "/" . l:replacement ."/gc"
  " call feedkeys(":,$s/" . a:searchString . \"/" . a:replacement ."/gc","t")
endfunction

"replace string in block or multiline with string
function! SearchandreplaceBlock() range
  let vmode = visualmode()
  echom "vmode>".vmode."<"
  if vmode == "v"
    echom "line select mode"
  elseif vmode == ""
    echom "V"
  elseif vmode == ""
    echom "Block select mode"
    echom "cV"
  else
    echom "??" . vmode
  endif
  let [line0, line_start, column_start, column0] = getpos("'<")
  let [linex, line_end, column_end, columnx ] = getpos("'>")
  " echom join(getpos("'<"))
  " echom join(getpos("'>"))
  let column_start = column_start-1
  let column_end = column_end-1
  let loopCount=line_start
  let lines=[]
  while (loopCount <= line_end)
    call add(lines, getline(loopCount))
    let loopCount=loopCount+1
  endwhile
  if vmode == ""
    let lines = map(lines,'v:val[' . column_start . ':'. column_end . ']')
    let linesuniq = uniq(sort(copy(lines)))
    echom "Replace for : " . join(linesuniq," <> ")
    let inputStr = "Enter replacement params(s) " . len(linesuniq). ": "
    call inputsave()
      let l:replacement = join(split(input( inputStr )),",")
    call inputrestore()
    if len(linesuniq) == 1
      let searchstring = linesuniq[0]
      call feedkeys(":,$S/" . searchstring . "/" . l:replacement . "/gc")
    else
      let searchstring = join(linesuniq,", ")
      call feedkeys(":,$S/{" . searchstring . "}/{" . l:replacement . "}/gc")
    endif
  elseif vmode == "v"
    let lines[0] = lines[0][ column_start : ]
    let lines[-1] = lines[-1][ : column_end ]
    call inputsave()
      let l:replacement = input( "Replacement string" )
    call inputrestore()
    let lines=join(lines,"\\_.")
    call feedkeys(":,$s/" . lines . "/" . l:replacement . "/gc")
    " call feedkeys(":,$S/{" . searchstring . "}/{" . a:replacement . "}/gc")
  endif
  return
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
    \   "xml": '<\!--',
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
      echom "got " . comment_leader
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


function! SessionsCompletion(ArgLead, CmdLine, CursorPos)
    echom "MyComp called"
    return filter(systemlist("ls ~/.vim/sessions/"), 'v:val =~ a:ArgLead')
endfunction

" command! -nargs=1 -complete=customlist,MyComp LoadSession call MyFunc(<f-args>)
command! -nargs=1 -complete=customlist,SessionsCompletion LoadSession call LoadSession(<f-args>)
command! -nargs=1 -complete=customlist,SessionsCompletion SaveSession call SaveSession(<f-args>)

" function! GetTagbarMethod()
  " let a:data = tagbar#currenttag('%s','')
  " return a:data
" endfunction

function! SessionName(...)
     return g:session_name
endfunction
call airline#parts#define_function('session_name', 'SessionName')
call airline#parts#define_accent('session_name', 'orange')
" let g:airline_section_x = airline#section#create_right(['tagbar', 'gutentags', 'grepper','filetype','session_name'])
" let g:airline_section_x = airline#section#create_right(['tagbar', 'gutentags', 'grepper','session_name'])
let g:airline_section_y = airline#section#create_right(['ffenc','session_name'])
" let g:airline_section_x = airline#section#create_right(['testBar','filetype'])

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


command! -nargs=? Ddd call Ttt(<f-args>)
function! Ttt(...)
  echom ">>>" . a:expr
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
  let l:input = input('Enter search string <' . searchTerm .'>:')
  call inputrestore()
  if !empty(l:input)
    let searchTerm=l:input
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
  let l:input = input('Enter search string <' . searchTerm .'>:')
  call inputrestore()
  if !empty(l:input)
    let searchTerm=l:input
  endif
  if (empty(searchTerm))
    echom "nothing to search for"
    return
  endif
  let searchTerm = substitute( searchTerm, " ","\\\\ ", "g")
  echom "Search term " . searchTerm
  " exe "Back! -Q " . searchTerm
  exe "Back! " . searchTerm
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


function! UploadLoadware()
  if (!empty(g:targetPhones))
    let l:phoneNr = g:targetPhones
  else
    let l:phoneNr = "121"
  endif
  let folder=expand('%:p:h')
  let l:gitFolder = matchstr(folder,'km000057/.\{-}/\zs.\{-}\ze/')
  call feedkeys(":AsyncRun uploadFw.py " . l:gitFolder . " " . l:phoneNr)
endfunction


function! BuildLocal()
  let folder=expand('%:p:h')
  let folder="/home/km000057/GIT/mainline/vobs/Opera_Infrastructure_Services/Media/Common/"
  echom "folder ".folder."<"
  let l:gitfolder = matchstr(folder,'km000057/.\{-}/\zs.\{-}\ze/')
  let l:vagrantPath = matchstr(folder,'km000057/.\{-}/\zs.*\ze')
  let l:vagrantPath = "~/" . l:vagrantPath
  echom "git " . l:gitfolder
  echom "path " . l:vagrantPath
  if index(map(["v3r5","main2","mainline","smainline"], 'v:val ==
l:gitfolder'),1) == -1
    echom "unknown git folder " . l:gitfolder
    return
  endif
  " exe AsyncRun buildLocal.sh  . g:GetGitFolder . .g:vagrantPath .
_and_test_WE3_4_x86.sh buildParse.sh  . g:gitfolder .  targetModel .
sip 1 %:p:h"
endfunction


" all scripts exit with make exit code (vagrant->local buildScript -> asyncRes
" code)
let g:gitfolder="mainline"
function! BuildBind(expr)
  call inputsave()
    let l:target = input( "targetPhones? (x to cancel, " " no upload)" . g:targetPhones . "?" )
  call inputrestore()
  if (l:target == "x")
    return
  endif
  if !empty(l:target)
    let g:targetPhones=l:target
  endif
  let folder=expand('%:p:h')
  echom "folder ".folder."<"
  let g:gitfolder = matchstr(folder,'km000057/.\{-}/\zs.\{-}\ze/')
  echom ">gitfolder " . g:gitfolder."<"
  if index(map(["v3r5","main2","mainline","smainline"], 'v:val == g:gitfolder'),1) == -1
    echom "unknown git folder " . g:gitfolder
    return
  endif
  let targetModel="34"
  echom "math for phones ". g:targetPhones
  if index(map(["120","121","122","125"], 'matchstr(g:targetPhones, v:val) != "" '),1) != -1
  " if index(map(copy(g:targetPhones) , 'v:val == "120" || v:val == "121" || v:val == "122" || v:val == "125"'),1) != -1
    echom "This is WE34 phone"
    let targetModel="34"
  elseif index(map(["128"], 'matchstr(g:targetPhones, v:val) != "" '),1) != -1
    echom "this is WE2 phone"
    let targetModel="2"
  elseif index(map(["123"], 'matchstr(g:targetPhones, v:val) != "" '),1) != -1
    echom "this is WE1 phone"
    let targetModel="1"
  endif
  " if matchstr(g:targetPhones,"")
  echom "run build ".g:gitfolder. " " . targetModel . "<"
  " exe "AsyncRun -post=UploadFw() buildParse.sh v3r5 2 sip 1 %:p:h"
  exe "AsyncRun -post=call\\ UploadFw() buildParse.sh " . g:gitfolder . " " . targetModel . " sip 1 %:p:h"
  " exe "AsyncRun -post=UploadFw() buildParse.sh mainline 34 sip 1 %:p:h"
  exe "wincmd w"
endfunction

let g:targetPhones=" 128 "
" command! UploadFw call UploadFw()
" command! -nargs=1 UploadFw call UploadFw()
" function! UploadFw(expr)
function! UploadFw()
  echom "Status ".g:asyncrun_code
  " echom "input  ". a:expr
  if empty(g:gitfolder)
    echom "Git folder not specified ". a:expr
    return
  endif
  " let nrOfErrors=len(filter(getqflist(),'v:val.valid'))
  " let nrOfErrors=len(filter(getqflist(),'matchstr(v:val.text,"error") != ""'))
  let errors=filter(getqflist(),'matchstr(v:val.text,"\\CError") != "" || matchstr(v:val.text,"error:") != ""')
  echom join(errors)
  let nrOfErrors=len(filter(getqflist(),'matchstr(v:val.text,"\\CError") != "" || matchstr(v:val.text,"error:") != ""'))
  echom "nr of errors " . nrOfErrors
  if g:asyncrun_code == 0 && nrOfErrors == 0 && g:targetPhones != " "
    echom "trigger phones"
    exe "AsyncRun uploadFw.py ". g:gitfolder . " " . g:targetPhones
" nmap <F1> :AsyncRun uploadFw.py mainline 120 121
  else
    echom "check logs"
    exe "clast"
    exe "cprevious"
  endif
endfunction

" Upload Error
function! ParseQuickFix()
  let nrOfErrors=len(filter(getqflist(),'matchstr(v:val.text,"\\CError") != "" || matchstr(v:val.text,"error:") != ""'))
  echom nrOfErrors
  let xx = getqflist()
  for line in xx
    if matchstr(line.text, "error") != ""
      echom "BAD"
    endif
  endfor
endfunction

function! RemoveLineFromQuickFix( line )
  let l:line = a:line - 1
  call setqflist( filter( getqflist(), "v:key['lnum'] != l:line" ) )
endfunction

"feed list in quick fix as paths to rename variable
function! QfToRename(...)
  let searchTerm=""
  if a:0 == 0
    " let searchTerm = expand("<cword>")
    let searchTerm = getreg('/')
    echom "no search term got "searchTerm
  else
    let searchTerm = a:1
    echom "got search term "searchTerm
  endif
  let qflist=getqflist()
  let filePaths=""
  if empty(qflist)
    echom "no data"
    return
  endif
  let filepaths=[]
  for item in qflist
    call add(filepaths, expand('#'.item.bufnr))
    " let filePaths=filePaths . " " . expand('#'.item.bufnr)
  endfor
  let filepaths = uniq(sort(filepaths))
  let filepaths = filter(filepaths,'!empty(glob(v:val))')
  let filepaths = join(filepaths," ")
  echom "filepaths "filepaths
  echom "search term  "searchTerm
  exe "CtrlSF " . searchTerm . " " . filepaths
endfunction

" function FooBar(...) " This is like *args in python
    " echom a:0 " a:0 contains an integer which is the number of arguments passed to the function
    " echom a:1 " a:1 contains the first argument passed, a:2 contains the second and so on
    " echo a:000 " a:000 contains a list of all arguments that were passed to the function
  " endfunction
  "
  " ifunction! FunctionName(arg1,...)
    " let a:arg2 = get(a:, 1, 0)
    " let a:arg3 = get(a:, 2, 0)
"
    " if a:arg2
      " Do stuff with arguments"
    " else
      " Do stuff without arguments"
    " endif
" endfunction
"
" in which get(a:, n, default) will get the nth optional argument returning default if it's not present.
"
function! ClangCheckImpl(cmd)
  if &autowrite | wall | endif
  echo "Running " . a:cmd . " ..."
  let l:output = system(a:cmd)
  cexpr l:output
  cwindow
  let w:quickfix_title = a:cmd
  if v:shell_error != 0
    cc
  endif
  let g:clang_check_last_cmd = a:cmd
endfunction

function! ClangCheck()
  let l:filename = expand('%')
  if l:filename =~ '\.\(cpp\|cxx\|cc\|c\)$'
    call ClangCheckImpl("clang-check " . l:filename)
  elseif exists("g:clang_check_last_cmd")
    call ClangCheckImpl(g:clang_check_last_cmd)
  else
    echo "Can't detect file's compilation arguments and no previous clang-check invocation!"
  endif
endfunction

function! SetTagsCmr()
  call SetTags("/home/pc/praceData/git/cmr_platform/cmp/dashboard/")
endfunction

let g:tagPath=""
let g:csPath=""
function! SetTags(expr)
  "path to git (mainline) folder
  echom "Set tag path to" . a:expr
  let g:tagPath=a:expr . "/phones.tag"
  if filereadable(expand(g:tagPath))
    exe "set tags=" . g:tagPath
  endif
  let l:testPath1 = a:expr . "/vobs/cscope.files"
  let l:testPath2 = a:expr . "/cscope.files"
  if filereadable(expand(l:testPath1))
    let g:csPath = l:testPath1
  elseif filereadable(expand(l:testPath2))
    let g:csPath = l:testPath2
  endif
  if ! empty(g:csPath)
    echo "set cscope"
    exe "cs kill cscope.files"
    exe "cs add " . g:csPath . " " . " "
    exe "cs reset"
  endif
  let g:my_db_path=a:expr. "/"
endfunction




function! ShowAllChanges()
  echom "show all changes"
  let saveCurrentBuffer=bufnr('%')
  exe "cexpr[]"
  let bufnrs = filter(range(1,bufnr('$')),'bufexists(v:val)')
  let bufnames=[]
  let bufnames = map(bufnrs,'expand("#".v:val.":p")')
  let setnames = uniq(sort(bufnames))
  let bufnames = filter(setnames,'!empty(glob(v:val))')
  let g:changedLines=[]
  for filex in bufnames
    echom "FOR filex ".filex
    echom "buffer ".expand("%")
    exe "b".filex
    echom "buffer switched? ".expand("%")
    exe "b". expand("#".filex.":p:t")
    echom "buffer switched? now?? ".expand("%")

    let b:baz=expand('#'.filex.':p')
    exe "b".filex
    echom "working on file " . b:baz
    let other_signs = []
    redir => signs
      silent execute "sign place file=" . b:baz
    redir END
    echom "buffer".expand("%")
    for sign_line in filter(split(signs, '\n')[2:], 'v:val =~# "="')
      let components  = split(sign_line)
      let line_number = str2nr(split(components[0], '=')[1])
      echom "line nr ".line_number
      " echom "add line " . getline(line_number)
      " exe 'caddexpr printf("%s:%d:%s", expand("%"), line("."), "entry")'
      exe 'caddexpr printf("%s:%d:%s", expand("#".filex.":p:t"), line_number, getline(line_number))'
      " call add(g:changedLines,getline(line_number))
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
          exe 'caddexpr printf("%s:%d:%s", expand("#".filex.":p:t"), line_number, getline(line_number))'
         " call add(g:changedLines, getline(line_number))
         call add(other_signs,line_number)
      endif
    endfor
  endfor
  call setqflist(g:changedLines)
endfunction


" let g:traceText="OPERA_ERROR"
let g:markTraceC="false"
function! MarkTraceAll(expr) range
  call Multiple_cursors_before()
  let l:markTraceOne=""
  if !empty(a:expr)
    let l:markTraceOne="true"
  else
    let l:markTraceOne=""
  endif
  let save_cursor = getpos(".")
  let traceString=GetTraceString()
  call setpos('.', save_cursor)
  call inputsave()
    let l:confirmString = input( " Trace string >" . traceString . "?" )
  call inputrestore()
  if !empty(l:confirmString)
    let traceString=l:confirmString
  endif
  echom "start loop 1"
  let l:counter=0
  while 1
    if l:markTraceOne=="true"
      if l:counter != 0
        break
      endif
      let l:counter=l:counter+1
    endif
    let lineMatch=""
    if (g:markTraceC=="false")
      let lineMatch=search("^[^ \t#\"].\\{-} \\{-}.::.\\{-}(",'W')
    else
      let lineMatch=search("^[^ \t#\"].\\{-} .\\{-}.(",'W')
    endif
    echom "got line ".lineMatch
    if empty(lineMatch)
      echom "no line found"
      break
    endif
    let methodName=getline(lineMatch)
    let arg_pos=match(methodName,"(")
    let output=methodName[0:arg_pos-1]
    let output=substitute(output,'\/', '', '' )
    echom "got method " . output
    " call setpos('.', lineMatch)
    let bracket=getline(search("^{",'Wz') )
    echom "got first bracket " . bracket
    if empty(bracket)
      echom "no bracket found"
      break
    endif
    " call setpos('.', bracket)
    " echom "got bracket " . bracket
    execute 'normal o'
    execute 'normal a' . "\<Tab>" . traceString . '("xx - ' . output . ' -> START\n");'
    execute 'normal l'
    echom "start second while"
    let l:previousMatch=0
    let l:bcount=0
    while 0
      let l:bcount=l:bcount+1

      let l:endBracket=search("^}\\|return",'Wz')
      echom "got end bracket >" . l:endBracket . "<"
      if empty(l:endBracket)
        echom "no bracket found"
        break
      elseif l:endBracket == l:previousMatch+1
        echom "match on same line"
        break
      else
        let l:previousMatch=l:endBracket
        let l:methodEnd=getline('.')
        echom 'got line end '.l:methodEnd
        " echom "got bracket " . bracket
        " let l:endBracket=l:endBracket-1
        " echom "got bracket " . bracket
        " call setpos('.', (l:endBracket-1))
        execute 'normal O'
        execute 'normal a' . "\<Tab>" . traceString . '("xx - ' . g:traceStringPlus . output . ' -> END ' . l:bcount . '\n");'
        execute 'normal l'
        if matchstr(l:methodEnd,"^}") != ""
          echom "end of method"
          break
        else
          echom "not end of method " . matchstr(l:methodEnd,"^}")
        endif
        let l:endBracket = l:endBracket+1
        echom "set pos after " . l:endBracket
        call cursor(l:endBracket,0)
      endif
    endwhile
  endwhile
  call Multiple_cursors_after()
endfunction

function! CleanUpTraces()
  echom "clean up start"
    let b:baz=expand('%:p')
    let other_signs = []
    redir => signs
      silent execute "sign place file=" . b:baz
    redir END
    for sign_line in filter(split(signs, '\n')[2:], 'v:val =~# "="')
      let components  = split(sign_line)
      let line_number = str2nr(split(components[0], '=')[1])
      " echom "add line ".line_number
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
         " echom "add line ".line_number
         call add(other_signs,line_number)
      endif
    endfor
    let deleteLines=[]
    let other_signs = reverse(uniq(sort(copy(other_signs),'n')))
    for line in other_signs
      " echo "loop line " . line
      let lineText=getline(line)
      " echom "got line " . lineText
      if matchstr(lineText, "_ERR") != ""
        execute line.'d'
        " echom "add remove line " . line
      endif
    endfor
endfunction


" speed up multiple cursor search with youcompleteme plugin
function! Multiple_cursors_before()
  let s:old_ycm_whitelist = g:ycm_filetype_whitelist
  let g:ycm_filetype_whitelist = {}
  call youcompleteme#DisableCursorMovedAutocommands()
endfunction

function! Multiple_cursors_after()
  call youcompleteme#EnableCursorMovedAutocommands()
  let g:ycm_filetype_whitelist = s:old_ycm_whitelist
endfunction

function! CreateHeader()
  let basename = expand("%:t:r")
  let includeGuard = '__' . basename . '_h__'
  call append(0, "#ifndef " . includeGuard)
  call append(1, "#define " . includeGuard)
  call append(line("$"), "#endif /* !" . includeGuard . " */")
endfunction

function! CreateClass()
  let l:currentWord = expand("<cword>")
  let l:currentLine=line(".")
  " echom "curr line " . l:currentLine
  call append(l:currentLine + 1, "class " . l:currentWord)
  call append(l:currentLine + 2, "{")
  call append(l:currentLine + 3, "  public:")
  call append(l:currentLine + 4, "    " . l:currentWord . "( ) { };")
  call append(l:currentLine + 5, "    ~" . l:currentWord . "( ) { };")
  call append(l:currentLine + 6, "};")
endfunction

function! CreateMain()
  call append(1, "#include \"stdio.h\"")
  call append(2, "#include \"iostream\"")
  call append(3, "#include \"vector\"")
  call append(5, "")
  call append(6, "int main()")
  call append(7, "{")
  call append(8, "printf(\"xx - start\\n\");")
  call append(9, "printf(\"xx - end\\n\");")
  call append(10, "}")
endfunction

function! CreateSetGet()
  let l:memberVariable = expand("<cword>")
  let l:type = getline(".")
  " echom "type " . l:type
  let l:typeList = split(l:type)
  let listLen = len(l:typeList)
  " echom "size " . listLen
  if (listLen > 1)
    let l:typeList = l:typeList[0:listLen-2]
    let l:type = join(l:typeList, " ")
  endif
  " echom "type list  " . l:type
  let l:variable = l:memberVariable
  let l:currentLine=line(".")
  " echom "variable " . l:variable
  if (l:variable=~"^m\\u.*")
    " echom "xx - mathc on m"
    let l:variable = strpart(l:variable,1)
    let l:variableLower = tolower(l:variable)
  " if (strpart(l:variable,0,1) == '_')
  elseif (l:variable=~"^m_.*")
    " echom "xx - mathc on m_"
    let l:variable = toupper(strpart(l:variable,2,1)) . strpart(l:variable,3)
    let l:variableLower = tolower(l:variable)
  endif
  call append(l:currentLine + 1, l:type . " get" . l:variable . "( ) { return " . l:memberVariable . "; };")
  call append(l:currentLine + 2, "void set" . l:variable . "( " . l:type . " value ) { " . l:memberVariable . " = value; };")
endfunction


" function! MyBalloonExpr()
  " call timer_start(0, {t->0})
  " if exists(':LspHover')
    " echom "call lsp hover"
    " " call lsp#ui#vim#hover#get_hover_under_cursor()
    " execute "LspHover"
    " return "hover"
  " else
        " return 'Cursor is at line ' . v:beval_lnum .
                " \', column ' . v:beval_col .
                " \ ' of file ' .  bufname(v:beval_bufnr) .
                " \ ' on word "' . v:beval_text . '"'
" endfunction
" set bexpr=MyBalloonExpr()
" set ballooneval
" set bevalterm





" Tabulate the selected text
" Requires column utility
function! Tabulate() range abort
	let firstlinum = a:firstline
	let lastlinum = a:lastline
	call inputsave()
	let delim = input("Enter delimiter: ")
	call inputrestore()
	redraw!
	let maxlen = max(map(range(firstlinum, lastlinum), "virtcol([v:val, '$'])")) - 1
	for linum in range(firstlinum, lastlinum)
		let len = virtcol([linum, '$']) - 1
		exe "norm! ".linum."ggA".repeat("\<Space>", (maxlen - len))."\<Esc>"
	endfor
	silent exe firstlinum.",".lastlinum."s/".delim."/".delim."\|  /g"
	silent exe firstlinum.",".lastlinum."!column -s'".delim."' -t"
	silent exe firstlinum.",".lastlinum."s/^/|  /"
	silent exe firstlinum.",".lastlinum."s/$/  |/"
	let maxlen = max(map(range(firstlinum, lastlinum), "virtcol([v:val, '$'])")) - 1
	exe "norm! ".firstlinum."ggO+".repeat("-", maxlen-2)."+\<Esc>"
	let firstlinum += 1
	let lastlinum += 1
	exe "norm! ".lastlinum."ggo+".repeat("-", maxlen-2)."+\<Esc>"
endfunction


"for simple char in insert mode use C-k letter [:^`]
function! InsertChar(expr)
  let l:data = split(a:expr)[1]
  echom l:data
  execute 'normal a' . l:data
endfunction

function! SearchDigraph()
  redir => data
    silent digraph
  redir END
  let data = substitute(data,'\%x00', '','') " remove first null char
  let data = substitute(data,'\%x00', ' ','g') "replace all other null chars with space
  let data = split(data, ' \+\d\+\s\+')
  call fzf#run({'source': data, 'down': '30%', 'sink': function('InsertChar')})
endfunction

function! LockScreen()
  exe "windo set scrollbind"
endfunction

function! LockScreenx()
  exe "windo set scrollbind!"
endfunction

" put selected strings in cwindow and highlight them
function MatchAndHighlight(expr)
  echom "start"
  let l:data = split(a:expr," ")
  let l:joinedData = join( l:data, "\\|" )
  echom "joined >" . l:joinedData . "<"
  exe "vimgrep " . l:joinedData . " %"

  let l:color = "1"
  for item in l:data
    echom "high " . l:color . " item " . l:item
    exe "Highlight " . l:color . " " . item
    let l:color = l:color + 1
  endfor
  exe "cwin"
endfunction
