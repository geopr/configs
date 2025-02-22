set scrolloff=10

" move selected lines holding Shift + >> and Shift + << without losing selection
vnoremap > >gv
vnoremap < <gv

" dont lose initially selected text when replacing something else with it
vnoremap <silent> p "_dP
