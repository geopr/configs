set scrolloff=10

" move selected lines holding Shift + >> and Shift + << without losing selection
vnoremap > >gv
vnoremap < <gv

" dont lose initially selected text when replacing something else with it
nnoremap p "0p
nnoremap P "0P
vnoremap p "0p
vnoremap P "0P

" Yank and delete a line (dd)
nnoremap dd "0dd

" Yank and delete a word (dw)
nnoremap dw "0dw

" Yank and delete a sentence (ds)
nnoremap ds "0ds

" Yank and delete a paragraph (dap)
nnoremap dap "0dap

" Yank and delete around a word (da)
nnoremap da "0da

" Yank and delete a block of text (daw)
nnoremap daw "0daw
