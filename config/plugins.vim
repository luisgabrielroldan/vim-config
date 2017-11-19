
" =================================================
" NERDTree
" =================================================

" autocmd vimenter * if !argc() | NERDTree | endif

map <C-n><C-t> :NERDTreeToggle<cr>

" =================================================
" CtrlP
" =================================================

" map <leader>pb :CtrlPBuffer<cr>
" map <leader>pm :CtrlPMixed<cr>
" map <leader>pc :CtrlPClearCache<cr>
"
" let g:ctrlp_custom_ignore = 'bower_components\|node_modules\|git|'
" let g:ctrlp_match_window_bottom = 0 " Show at top of window
" let g:ctrlp_working_path_mode = 2 " Smart path mode
" let g:ctrlp_mru_files = 1 " Enable Most Recently Used files feature
" let g:ctrlp_jump_to_buffer = 2 " Jump to tab AND buffer if already open
" let g:ctrlp_split_window = 1 " <CR> = New Tab
"

" =================================================
" vim-test
" =================================================
nmap <silent> <leader>Tf :TestFile<CR>
nmap <silent> <leader>Ts :TestSuite<CR>
nmap <silent> <leader>Tn :TestNearest<CR>
nmap <silent> <leader>Tl :TestLast<CR>


" =================================================
" FZF
" =================================================

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

nnoremap <silent> <Leader>fw :Windows<CR>
nnoremap <silent> <Leader>bb :Buffers<CR>

nnoremap <silent> <Leader>fp :Frg<CR>
nnoremap <silent> <Leader>ff :Frga<CR>
nnoremap <silent> <Leader>flu :Locate ~<CR>
nnoremap <silent> <Leader>flr :Locate /<CR>
nnoremap <silent> <Leader>fh :History<CR>

nnoremap <silent> <Leader>gl :Commits<CR>
nnoremap <silent> <Leader>gb :BCommits<CR>
nnoremap <silent> <Leader>gs :GFiles?<CR>
nnoremap <silent> <Leader>gg :GGrep?<CR>
nnoremap <silent> <Leader>ft :Filetypes<CR>

nnoremap <silent> <Leader>; :Maps<CR>
nnoremap <silent> <Leader>: :Commands<CR>
nnoremap <silent> <Leader>h :Helptags<CR>
nnoremap <silent> <Leader>ll :Lines<CR>
nnoremap <silent> <Leader>lb :BLines<CR>

command -bang Frg
  \ call fzf#vim#files(<q-args>, {'source': 'rg --files -g ""'}, <bang>0)

command -bang Frga
  \ call fzf#vim#files(<q-args>, {'source': 'rg --files --hidden -g "!.git/*"'}, <bang>0)

command -bang -nargs=* GGrep
  \ call fzf#vim#grep('git grep --line-number '.shellescape(<q-args>), 0, <bang>0)

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang Colors
  \ call fzf#vim#colors({'left': '15%', 'options': '--reverse --margin 30%,0'}, <bang>0)







