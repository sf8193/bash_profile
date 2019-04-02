execute  pathogen#infect()

set smartindent
set tabstop=4
set shiftwidth=4
set number
set ruler
set showcmd
set wildmenu
set incsearch
set hlsearch
set ai

map <C-n> :NERDTreeToggle<CR>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
inoremap jk <ESC>
nnoremap tl :tabnext<CR>
nnoremap tf :tabfirst<CR>
nnoremap j gj
nnoremap k gk

syntax on

filetype plugin on

let mapleader = ","

" [count]<leader>ci toggles the comment state of the selected line(s)
" individually.
"
"[count]<leader>cs |NERDComSexyComment|
"Comments out the selected lines with a pretty block formatted layout.


 let g:NERDCompactSexyComs = 1
"
" " Align line-wise comment delimiters flush left instead of following code
" indentation
 let g:NERDDefaultAlign = 'left'
"

" " Allow commenting and inverting empty lines (useful when commenting a
" region)
 let g:NERDCommentEmptyLines = 1

let g:airline_detect_paste=1
let g:airline#extensions#syntastic#enabled = 1
"Gstatus bring up the output of git-status
":Git add
":Gcommit
":Gdiff

	function! CleverTab()
	   if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
	      return "\<Tab>"
	   else
	      return "\<C-N>"
	   endif
	endfunction
	inoremap <Tab> <C-R>=CleverTab()<CR>
