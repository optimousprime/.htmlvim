" Necesary  for lots of cool vim things
set nocompatible

" Incremental searching is sexy
set incsearch
"
" " Highlight things that we find with the search
set hlsearch
call pathogen#infect()
filetype on
syntax on
filetype plugin indent on
set smartindent
colorscheme eclipse 

autocmd! bufwritepost .vimrc source %
au FileType xml exe ":silent %!xmllint --format --recover - 2>/dev/null"
autocmd VimEnter * nested :call tagbar#autoopen(1)
autocmd VimEnter * nested :call g:NERDTreeCreator.TogglePrimary("") 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

set omnifunc=syntaxcomplete#Complete

map <c-f> :call JsBeautify()<cr>
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc" 
