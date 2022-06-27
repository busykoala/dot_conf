" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Theme
    Plug 'NLKNguyen/papercolor-theme'

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " File Explorer
    Plug 'scrooloose/NERDTree'

    " fuzzy finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " Git plugins
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'

    " Editor Config
    Plug 'editorconfig/editorconfig-vim'

    " Rainbow brackets
    Plug 'frazrepo/vim-rainbow'

    " Auto create ctags
    Plug 'ludovicchabant/vim-gutentags'

    " Coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Snippets (integrated by coc-snippets)
    Plug 'honza/vim-snippets'

call plug#end()
