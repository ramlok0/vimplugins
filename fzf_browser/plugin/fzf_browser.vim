let s:fzf_browser_path = expand('<sfile>:p:h:h')

let g:fzf_browser_ignore_dirs=""
let g:fzf_browser_ignore_files=""

let s:oldAutowrite = 0
let s:oldTimeoutLen = 1000
let s:termBuf = 0
let s:firstOpen = 0
let s:outtxt = 0
" let g:fuzzy_out_file = ""

func! s:AfterFuzzyTerminal(job, st)
  let &timeoutlen = s:oldTimeoutLen
  let &autowrite = s:oldAutowrite
  echom " exit status " . a:st
  if a:st != 0
    echo "something went wrong " . a:st
    return
  endif
  " redraw!
  " echom g:fuzzy_out_file
  " let l:res = filereadable(g:fuzzy_out_file) ? readfile(g:fuzzy_out_file) : ''
  " echom l:res
  let s:outtxt = trim(s:outtxt)
  if len(s:outtxt) > 0
    wincmd q
    exec "edit ".fnameescape(s:outtxt)
  endif
endfunc


fun! s:OnTerminalOpen(job, dunno)
  if !s:firstOpen
    let s:firstOpen = 1
    " Messing with timeoutlen to make esc for exiting instanteneous
    let s:oldTimeoutLen = &timeoutlen
    setlocal timeoutlen=10
    " Add dummy mapping for right arrow, in order to trigger
    " timeoutlen for esc, and make other arrow keys get sent to terminal
    " instance instead of esc triggering directly
    let resetTimeoutLen = "let &timeoutlen = ".s:oldTimeoutLen
    tnoremap <buffer> OC <c-w>:echo "dummy map"<cr>
    exec "tnoremap <buffer> <esc> <c-w>:".l:resetTimeoutLen."<cr><c-w>:bd!<cr>"
  endif
endfun

fun! s:Onout(handler, msg)
  let s:outtxt = a:msg
endfun

fun! FuzzyBrowse(...)
  let l:data = a:000
  if empty(l:data)
    let l:data = []
    call add( l:data, expand("%:p:h") . '/'  )
    " let l:data = ['/home/pc/']
  endif
  "let outFile="/tmp/vim_fbrowse_out"
  " let g:fuzzy_out_file = tempname()
  let s:oldAutowrite = &autowrite
  set noautowrite
  let l:dirIgnore = " "
  let l:fileIgnore = " "
  if g:fzf_browser_ignore_files != ""
    let l:fileIgnore = " -i ".g:fzf_browser_ignore_files." "
  endif
  if g:fzf_browser_ignore_dirs != ""
    let l:dirIgnore = " -d ".g:fzf_browser_ignore_dirs." "
  endif
  let cmd = s:fzf_browser_path . "/fuzzybrowse " . l:dirIgnore.l:fileIgnore.join(l:data, ' ')
  " let cmd = "/home/pc/.vim/bundle/fzf_browser/fuzzybrowse ".l:dirIgnore.l:fileIgnore.join(l:data, ' ')
  let s:firstOpen = 0
  " if has("vim")
  " let s:termBuf = term_start(l:cmd, {'term_finish': 'close', 'exit_cb': function('s:AfterFuzzyTerminal'), 'callback': function('s:OnTerminalOpen')})
    let s:termBuf = term_start(l:cmd, {'term_finish': 'close', 'exit_cb': function('s:AfterFuzzyTerminal'), 'out_cb': function('s:Onout'), 'callback': function('s:OnTerminalOpen') })
  " else
    " {'on_exit': function('s:on_floaterm_close', [bufnr, get(a:jobopts, 'on_exit', v:null)])
    " let ch = termopen(l:cmd, a:jobopts)
 " |on_stdout|:  (function) Callback invoked when the job emits
			      " stdout data.
  " endif
endfun


" fun! FuzzyBrowse(...)
  " let entry=call('LaunchFuzzyBrowse', a:000)
" endfun
" 
" fun! FuzFindPath()
  " echo s:findPath(getline(line('.'))[:getpos('.')[2]-1])
" endf
" 
" 
" fun! s:findPath(content)
  " let specialCharPat = "[^$~\.a-zA-Z0-9/\\\\\]"
  " let rev = join(reverse(split(a:content, '.\zs')), '')
  " let lastWasSpecial=0
  " let stepInd=0
  " while stepInd<len(rev)
    " let cur=rev[stepInd]
    " let specialMatch = match(cur, specialCharPat)==0
    " if lastWasSpecial && cur != '\'
      " break
    " endif
    " let stepInd+=1
    " let lastWasSpecial = specialMatch
  " endwhile
  " let stepInd-=1
  " let ind=len(a:content)-stepInd+1
  " if ind>0
    " return [a:content[ind-1:-1], stepInd]
  " else
    " return ''
  " endif
" endf
" 
" 
" 
" 
" fun! FuzzyPathFromHere()
  " let [l:str, l:origLen] = s:findPath(getline(line('.'))[:getpos('.')[2]-1])
  " let l:spl = split(l:str, '/')
  " if len(l:spl)==0
    " let l:dir='.'
    " let l:extra = ''
  " elseif len(l:spl)==1
    " if l:str[0]=='/'
      " let l:extra=l:spl[0]
      " let l:dir = ''
    " else
      " let l:dir=l:spl[0]
      " let l:extra = ''
    " endif
  " else
    " if l:str[-1:] == '/'
      " let l:dir=join(l:spl, '/')
      " let l:extra=''
    " else
      " let l:dir=join(l:spl[:-2], '/')
      " let l:extra=l:spl[-1]
    " endif
  " endif
  " if l:str[0]=='/'
    " let l:dir='/'.l:dir
  " endif
" 
  " let l:res = LaunchFuzzyBrowse(l:extra==''?'': '-q '.l:extra, l:dir)
" 
  " if res != ''
    " let oldReg=@x
    " let @x=l:res
    " if l:origLen > 0
      " exec "normal! v".(l:origLen-1).'h"xp'
    " else
      " exec 'normal! "xp'
    " endif
    " let @x=oldReg
  " endif
" endf
" 
" 
" command! -nargs=* -complete=file FuzzyBrowse silent call FuzzyBrowse(split(<q-args>))|echo "cwd: ".getcwd()
" command! -nargs=? FuzzyBrowseHere silent call FuzzyBrowse(split(<q-args>)+[expand("%:p:h")])|echo "cwd: ".getcwd()
" command! -nargs=? FuzzyInsertPath silent exec "normal! a".call('LaunchFuzzyBrowse', split(<q-args>))|echo "cwd: ".getcwd()
" inoremap <plug>FuzzyPath <esc>:call FuzzyPathFromHere()<cr>a
" "inoremap <expr> <plug>FuzzyPath        FuzzyPathFromHere()
" 
" 

