execute pathogen#infect()
syntax on
filetype plugin indent on

colorscheme zenburn

set et ts=2 sts=2 sw=2

if has("gui_running")
  set guioptions=egM
end

" emacs movement and kill commands in insertmode, heathen!
imap <C-a> <C-o>^
imap <C-e> <End>
