let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

let mapleader = " "

set expandtab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set softtabstop=4 expandtab
set cindent

set incsearch

set nowrap

set updatetime=50

set ttimeout
set ttimeoutlen=1
set ttyfast

set number

set breakindent
set lbr

set noswapfile

set laststatus=2
hi StatusLine ctermbg=red ctermfg=black
highlight LineNr ctermfg=darkgray
highlight NonText ctermfg=darkgray

nmap <leader>w :w<CR>
nmap <leader>pv :Ex<CR>
nmap <leader>x :silent !chmod +x %<CR>
nmap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>

au FileType python nmap <leader>t :w<CR>:!python %<CR>

nmap <C-u> <C-u>zz
nmap <C-d> <C-d>zz
nmap n nzz
nmap N Nzz

vmap J :m '>+1<CR>gv=gv
vmap K :m '<-2<CR>gv=gv
vmap p pgvy
vmap gcc :s/\(.*\)/\/\/ \1/<CR>

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

function! g:FckThatMatchParen ()
    if exists(":NoMatchParen")
        :NoMatchParen
    endif
endfunction

augroup plugin_initialize
    autocmd!
    autocmd VimEnter * call FckThatMatchParen()
augroup END

au BufNewFile,BufReadPost *.py  set filetype=python
let g:python_highlight_all = 1
let g:python_highlight_operators = 0
let g:python_highlight_indent_errors = 0
let g:python_highlight_space_errors = 0

