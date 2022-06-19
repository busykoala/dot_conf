" -----------------------------------------------------------------------------
" INSTALL EXTENSIONS
" -----------------------------------------------------------------------------
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pyright',
  \ 'coc-tsserver',
  \ 'coc-vetur',
  \ 'coc-clangd',
  \ ]

" -----------------------------------------------------------------------------
" GENERAL COC-CONFIG
" -----------------------------------------------------------------------------

" Set python3 interpreter for coc
let g:python3_host_prog='/usr/bin/python3'

" Use Ctrl + j / Ctrl + k to navigate list
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Suggested in example configuration:
" https://github.com/neoclide/coc.nvim#example-vim-configuration
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
set shortmess+=c
set signcolumn=yes

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)

" -----------------------------------------------------------------------------
" COC-SNIPPETS CONFIG
" -----------------------------------------------------------------------------
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)
