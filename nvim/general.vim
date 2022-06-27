"-------------------------------------------------------------------------------
" Basic settings (leader, numbers, list...)
"-------------------------------------------------------------------------------
syntax on
colorscheme PaperColor
filetype plugin on
set nu
set encoding=utf-8
set t_Co=256
let mapleader=","
set clipboard+=unnamedplus

" set light between 6-18
if system('date +%H') > 6 && system('date +%H') < 18
    set background=light
else
    set background=dark
endif

" Highlight nonascii characters
au BufWinEnter * let w:matchnonascii=matchadd('ErrorMsg', "[\x7f-\xff]", -1)

" Show hidden characters
set list
set listchars=eol:↵,trail:·,tab:>-,nbsp:␣

" Word with dash belongs together
set iskeyword+=-

" enable rainbow bracket plugin
let g:rainbow_active = 1

"-------------------------------------------------------------------------------
" Most common mappings (file finder, buffers, fulltext...)
"-------------------------------------------------------------------------------
map <C-f> :Files<CR>
map <leader>b :Buffers<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>

"-------------------------------------------------------------------------------
" Split navigation & settings
"-------------------------------------------------------------------------------
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>h :split<CR>
set splitbelow
set splitright

"-------------------------------------------------------------------------------
" Fulltext search using ripgrep
"-------------------------------------------------------------------------------
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

"-------------------------------------------------------------------------------
" Nerd tree conf (open if dir, toggle map)
"-------------------------------------------------------------------------------
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd VimEnter * wincmd p
map <C-N> :NERDTreeToggle<CR>
map <C-E> :NERDTreeFind<CR>
let NERDTreeQuitOnOpen = 1
