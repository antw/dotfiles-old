" Bindings and functions extracted from Janus.

" Bindings
map <Leader>n :NERDTreeToggle<CR>

" Configuration
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '\.rbc$', '\.class$', '\.o', '\~$']
let NERDTreeHijackNetrw = 0

" Single click opens everything.
let NERDTreeMouseMode = 3

augroup AuNERDTreeCmd
autocmd AuNERDTreeCmd FocusGained * call s:UpdateNERDTree()

" NERDTree utility function
function s:UpdateNERDTree(...)
  let stay = 0

  if(exists("a:1"))
    let stay = a:1
  end

  if exists("t:NERDTreeBufName")
    let nr = bufwinnr(t:NERDTreeBufName)
    if nr != -1
      exe nr . "wincmd w"
      exe substitute(mapcheck("R"), "<CR>", "", "")
      if !stay
        wincmd p
      end
    endif
  endif

  if exists(":CommandTFlush") == 2
    CommandTFlush
  endif
endfunction
