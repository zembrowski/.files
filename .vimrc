set nocompatible              	" We want the latest Vim settings and options (be iMproved, required)

so ~/.vim/plugins.vim

syntax enable

set backspace=indent,eol,start	" Make backspace behave like every other editor.
let mapleader = ','		" Map leader to comma (Laracasts inspired: "The default leader is backslash '\', but a comma ',' is much better.")
set nonumber			" Let's deactivate line numbers
set noerrorbells visualbell t_vb= 	" No damn bells.



"----------Visuals---------"

colorscheme atom-dark
set t_CO=256			" Use 256 colors. This is useful for Terminal Vim.

set guioptions-=e 		" We don't want GUI tabs

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

set fillchars+=vert:\ 
hi LineNr ctermbg=none

" We'll fake a custom padding for each window.
hi foldcolumn ctermbg=none
set foldcolumn=2

" Vertical split styling
hi VertSplit ctermfg=black ctermbg=black

"----------Searching---------"

set hlsearch
set incsearch



"----------Splits---------"

set splitbelow
set splitright
nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>



"----------Mappings---------"

" Make it easy to edit the .vimrc file. 
nmap <Leader>ev :tabedit ~/.vimrc<cr> 

" Make it easy to edit a snippet file.
nmap <Leader>es :e ~/.vim/snippets/<cr> 

" Make it easy to edit the plugins file.
nmap <Leader>ep :e ~/.vim/plugins.vim<cr> 

" Add simple highlight removal
nmap <Leader><Space> :nohlsearch<cr>

" Ctags specific
nmap <Leader>f :tag<space>

"Sort PHP use statements
"http://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
vmap <Leader>ul ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>

"----------Plugins---------"

" CtrlP
let g:ctrlp_custom_ignore = 'node_modules|\DS_Store\|git\|vendor'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10,results:10'
nmap <D-p> :CtrlP<cr>
nmap <D-r> :CtrlPBufTag<cr>
nmap <D-d> :CtrlPMRUFiles<cr>

" NERDTree
let NERDTreeHijackNetrw = 0
nmap <D-e> :NERDTreeToggle<cr>

" greplace
set grepprg=ag			" We want to use ag for the search
let g:grep_cmd_opts = '--line-numbers --noheading'

" vim-php-namespace
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>

autocmd FileType php inoremap <Leader>ua <Esc>:call PhpSortUse()<CR>
autocmd FileType php noremap <Leader>ua :call PhpSortUse()<CR>
let g:php_namespace_sort_after_insert = 1



"----------Laravel-Specific---------"
nmap <Leader>lr :e routes/web.php<cr>
nmap <Leader>lm :!php artisan make:
nmap <Leader>lec :e app/Http/Controllers/<cr>
nmap <Leader>lem :e app/<cr>
nmap <Leader>lev :e resources/views/<cr>
"nmap <Leader>lfc :CtrlP<cr>app/Http/Controllers/



"----------Auto-Commands---------"

" Automatically source the .vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
	autocmd BufWritePost .vimrc source ~/.gvimrc
	autocmd BufWritePost .gvimrc source ~/.gvimrc
augroup END



" Notes and Tips
" - Press 'zz' to instantly center the line where the cursor is located.
" - Press 'CTRL + ALT + 6' to go to method.
" - Press 'CTRL + 6' to go back.
