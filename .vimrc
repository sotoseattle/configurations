
call pathogen#infect()
syntax on
filetype plugin indent on
set mouse=a

runtime! macros/matchit.vim

augroup myfiletypes
  autocmd!
  autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END

set showtabline=2
set tabpagemax=15

set cursorline
set number
set statusline=%F%m%r%h%w\ [TYPE=%Y]\ [ROW=%04l]\ [%p%%]\ [LEN=%L]
set laststatus=2

set background=dark
colorscheme solarized

:set foldmethod=indent

