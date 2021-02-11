" Author: bilbopingouin
" Original date: 31.05.2019

" Sets the status line configuration
"
" The following function was taken on https://kadekillary.work/post/statusline-vim/
" Dictionary: take mode() input -> longer notation of current mode
" mode() is defined by Vim
let g:currentmode={ 'n' : 'Normal ', 'no' : 'N·Operator Pending ', 'v' : 'Visual ', 'V' : 'V·Line ', '^V' : 'V·Block ', 's' : 'Select ', 'S': 'S·Line ', '^S' : 'S·Block ', 'i' : 'Insert ', 'R' : 'Replace ', 'Rv' : 'V·Replace ', 'c' : 'Command ', 'cv' : 'Vim Ex ', 'ce' : 'Ex ', 'r' : 'Prompt ', 'rm' : 'More ', 'r?' : 'Confirm ', '!' : 'Shell ', 't' : 'Terminal '}


" Function: return current mode
" abort -> function will abort soon as error detected
function! ModeCurrent() abort
    let l:modecurrent = mode()
    " use get() -> fails safely, since ^V doesn't seem to register
    " 3rd arg is used when return of mode() == 0, which is case with ^V
    " thus, ^V fails -> returns 0 -> replaced with 'V Block'
    let l:modelist = toupper(get(g:currentmode, l:modecurrent, 'V·Block '))
    let l:current_status_mode = l:modelist
    return l:current_status_mode
endfunction

set statusline  =
set statusline +=\ %{ModeCurrent()}\              " Shows the insert mode type
set statusline +=%#StatusLineFile#                " colour
set statusline +=\ %<%f\                          " File name
set statusline +=%#StatusNonFile#                 " colour
set statusline +=\                                " Space
set statusline +=%h                               " [HELP] flag
set statusline +=%m                               " [+]/[-] modified flag
set statusline +=%r                               " [RO] flag
set statusline +=%q                               " [quickfix list]/[location list]
set statusline +=%{fugitive#statusline()[4:-2]}   " git branch
set statusline +=%=                               " Separation left/right align
set statusline +=%#StatusLineMode#                " colour
set statusline +=\ %-14.(%l,%c%V%)                " line,col/virtual col
set statusline +=\                                " Space
set statusline +=%P                               " Position within file (percentage)

" Sets the statusline visible
" 0 = never
" 1 = only for more than one window
" 2 = always
set laststatus=2
