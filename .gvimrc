" MacVim specific settings

"----------Window---------"
set fu				" Start in fullscreen.



"----------Editor---------"

set macligatures		" Ligatures.
set guifont=Fira\ Code:h16	" Font.
set linespace=15		" Line height.



"----------Styling---------"

hi LineNr guibg=bg		" Line number background should be the same as the default.
hi foldcolumn guibg=bg		" Left padding background should be the same as the default.
hi vertsplit guifg=bg guibg=bg  " Get rid of ugly split borders.
hi Cursor guifg=white guibg=#2979FF
hi NonText guifg=bg

"----------Key-Bindings---------"

" Disable the print key for MacVim
if has("gui_macvim")
	macmenu &File.Print key=<nop>
endif
