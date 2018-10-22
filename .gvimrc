set macligatures		" Ligatures.
set guifont=Fira\ Code:h16	" Font.
set linespace=15		" Line height.
hi LineNr guibg=bg
hi foldcolumn guibg=bg
hi vertsplit guifg=bg guibg=bg  " Get rid of ugly split borders.


" Disable the print key for MacVim
if has("gui_macvim")
	macmenu &File.Print key=<nop>
endif
