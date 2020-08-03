call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'dense-analysis/ale'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jparise/vim-graphql'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

set number
set relativenumber
set colorcolumn=80
set cmdheight=2
set noswapfile
set tabstop=2

set termguicolors
let g:gruvbox_contrast_dark = 'soft'
colorscheme gruvbox
set background=dark

let g:ale_fixers = ['prettier', 'eslint']
let g:ale_fix_on_save = 1

let g:NERDSpaceDelims = 1

" vim hardcodes background color erase even if the terminfo file does
" not contain bce (not to mention that libvte based terminals
" incorrectly contain bce in their terminfo files). This causes
" incorrect background rendering when using a color theme with a
" background color.
let &t_ut = ''

