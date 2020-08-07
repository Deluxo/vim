nnoremap <c-c> :Gcommit<CR>
nnoremap <leader>gl :!git aw<CR>
nnoremap <leader>glp :!git aw -p<CR>
nnoremap <leader>gd :!git diff<CR>
nnoremap <leader>gp :!git pull<CR>
nnoremap <leader>gc :!git add . && git commit<CR>
nnoremap <leader>gcp :!git add . && git commit && git push <CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <silent><Leader>g :call setbufvar(winbufnr(popup_atcursor(split(system("git log -n 1 -L " . line(".") . ",+1:" . expand("%:p")), "\n"), { "padding": [1,1,1,1], "pos": "botleft", "wrap": 0 })), "&filetype", "git")<CR>
