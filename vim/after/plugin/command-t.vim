if has("gui_macvim")
  map <D-t> :CommandTFlush<CR>\|:CommandT<CR>
  imap <D-t> <ESC>:CommandTFlush<CR>\|:CommandT<CR>
else
  map <C-t> :CommandTFlush<CR>\|:CommandT<CR>
  imap <C-t> <ESC>:CommandTFlush<CR>\|:CommandT<CR>
endif

map <A-t> :CommandTBuffer<CR>
imap <A-t> <ESC>:CommandTBuffer<CR>

let CommandTMaxHeight = 10
