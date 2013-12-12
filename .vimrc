set nocompatible
filetype on
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set term=xterm-256color
color synic
set tabstop=2 shiftwidth=2 expandtab
set backspace=indent,eol,start
syntax on
set number

highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80"


call pathogen#infect()

let NERDTreeWinSize = 25
let NERDTreeShowHidden=1

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
function! NERDTreeQuit()
  redir => buffersoutput
  silent buffers
  redir END
"                     1BufNo  2Mods.     3File           4LineNo
  let pattern = '^\s*\(\d\+\)\(.....\) "\(.*\)"\s\+line \(\d\+\)$'
  let windowfound = 0

  for bline in split(buffersoutput, "\n")
    let m = matchlist(bline, pattern)

    if (len(m) > 0)
      if (m[2] =~ '..a..')
        let windowfound = 1
      endif
    endif
  endfor

  if (!windowfound)
    quitall
  endif
endfunction
autocmd WinEnter * call NERDTreeQuit()

command -nargs=+ SReplace call StepReplace(<f-args>)
function StepReplace(...)
  if a:0 == 1
      let @y = input("Replace with: ", @y)
          let y = @y
              if @y =~ "\\d\\+$"
                    let n = substitute(@y, ".\\{-}\\(\\d\\+\\)$", "\\1", "") + a:1
      let @y = substitute(@y, "\\(.\\{-}\\)\\d\\+$", "\\1".n, "")
    endif
    return y
  elseif a:0 == 3
    let @y = a:2
    execute ".,$s/".a:1."/\\=StepReplace(".a:3.")/".(&gdefault ? "" : "g")."c"
  else
    echo "Usage: SReplace <search> <substitute> <increment>"
  endif
endfunction

let Tlist_Use_Horiz_Window = 1
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 1
map <F5> :TlistOpen<CR>
