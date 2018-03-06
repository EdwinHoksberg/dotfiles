" enable line numbers
set number

" update ui every 250ms
set updatetime=250

" show executed commands
set showmode

" use system clipboard
set clipboard=unnamedplus

" create a line at the 121 character mark for php files
autocmd FileType php setlocal colorcolumn=121
" create a line at the 51 character mark for gitcommit files
autocmd FileType gitcommit setlocal colorcolumn=51

" make tab 4 spaces long
set tabstop=4
set shiftwidth=4
set expandtab

" disable compatibity mode
set nocp

" disable swap file
set noswapfile

" force default colorscheme
colorscheme default

" enable pathogen autoloader
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
syntax on
filetype plugin indent on

" Remember last cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" set xterm-256
set t_Co=256

" Keep cursor centered
set scrolloff=99999

" Search result highlights
set hlsearch
hi Search ctermfg=black

" airline plugin
set laststatus=2
let g:airline_powerline_fonts = 1

function! AirlineInit()
    let g:airline_section_a = airline#section#create(['mode', ' ', 'branch'])
endfunction
autocmd VimEnter * call AirlineInit()

" gitgutter plugin
let g:gitgutter_realtime = 1
let g:gitgutter_highlight_lines = 0

" indent guides plguin
autocmd VimEnter * :IndentGuidesEnable
let g:indent_guides_auto_colors=0

hi IndentGuidesEven ctermbg=239 guibg=red
hi IndentGuidesOdd ctermbg=237 guibg=green

" Turn off line numbering and git signs for easy copy/pasting
map <F2> :set nu! \| :GitGutterSignsToggle<CR>

" Paste into vim without autoindenting
nnoremap <F3> :set invpaste paste?<CR>
set pastetoggle=<F3>

" Reload file content, warn if unsaved changes
map <F5> :edit \| :normal zz<CR>
