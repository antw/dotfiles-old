" if has("gui_macvim")
  " map <D-p> :CommandTFlush<CR>\|:CommandT<CR>
  " imap <D-p> <ESC>:CommandTFlush<CR>\|:CommandT<CR>
" else
  " map <C-p> :CommandTFlush<CR>\|:CommandT<CR>
  " imap <C-p> <ESC>:CommandTFlush<CR>\|:CommandT<CR>
" endif

map <C-p> :CommandTFlush<CR>\|:CommandT<CR>
imap <C-p> <ESC>:CommandTFlush<CR>\|:CommandT<CR>

map <A-p> :CommandTBuffer<CR>
imap <A-p> <ESC>:CommandTBuffer<CR>

let g:CommandTMatchWindowReverse = 1
let g:CommandTMaxHeight = 10
