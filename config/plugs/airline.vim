" Airline config

" Enable smart tabline
let g:airline#extensions#tabline#enabled = 1

" tabline saparators
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" formatter for file names in tabline
let g:airline#extensions#tabline#formatter = 'unique_tail'

" git branch setup
let g:airline_symbols.branch = ''
let g:airline#extensions#branch#enabled = 1

" support powerline fonts (for icons)
let g:airline_powerline_fonts = 1

