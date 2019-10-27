au FileType go map <F9> :GoFmt<CR>
au FileType typescript setl expandtab shiftwidth=2 softtabstop=2
au FileType javascript setl expandtab shiftwidth=2 softtabstop=2
au FileType vue setl expandtab shiftwidth=2 softtabstop=2

"au TextChanged * silent! write
"au TextChangedI * silent! write
"au TextYankPost * silent! write

au CursorHoldI * stopinsert
au CursorHold * silent! write
au CursorHoldI * silent! write
