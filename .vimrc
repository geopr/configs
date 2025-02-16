set scrolloff=10

" move selected lines holding Shift + >> and Shift + << without losing selection
vnoremap > >gv
vnoremap < <gv

" dont lose initially selected text when replacing something else with it
nnoremap p "0p
nnoremap P "0P
vnoremap p "0p
vnoremap P "0P
