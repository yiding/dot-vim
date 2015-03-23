execute pathogen#infect()
syntax on
filetype plugin indent on

let g:zenburn_high_Contrast = 1
colorscheme zenburn
hi Visual        guibg=#2f2f2f
hi VisualNOS        guibg=#2f2f2f

set hlsearch
set foldlevel=1

set et ts=2 sts=2 sw=2

if has("gui_running")
  set guioptions=gM
  set fillchars=vert:│
end

if &term == "screen"
  set t_Co=256
end

" trailing whitespace removal
autocmd FileType javascript,python,c,cpp 
      \ autocmd BufWritePre <buffer> :%s/\s\+$//e

" emacs movement and kill commands in insertmode, heathen!
imap <C-a> <C-o>^
imap <C-e> <End>

" plugin config
let g:pymode_rope = 0

" commandt
let g:CommandTFileScanner="watchman"
let g:CommandTTraverseSCM="file"
let g:CommandTMaxFiles = 5000000
let g:CommandTInputDebounce = 500
let g:CommandTMaxHeight = 20

" colorcolumn for different filetypes
autocmd BufNewFile,BufRead *.js,*.py,*.c,*.cpp 
      \ setl colorcolumn=80

autocmd BufNewFile,BufRead *.hs,*.java
      \ setl colorcolumn=120
