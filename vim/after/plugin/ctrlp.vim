" https://gist.github.com/ee14d6ecb9196a07da56

" Set the max files
let g:ctrlp_max_files = 10000
let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }

" Optimize file searching
" if has("unix")
"     let g:ctrlp_user_command = {
"                 \   'types': {
"                 \       1: ['.git/', 'cd %s && git ls-files -o -c --exclude-standard']
"                 \   },
"                 \   'fallback': 'find %s -type f | head -' . g:ctrlp_max_files
"                 \ }
" endif
