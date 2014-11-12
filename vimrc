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

autocmd BufReadPre,FileReadPre *.hs
      \ :set colorcolumn=80

" plugin config
let g:pymode_rope = 0
