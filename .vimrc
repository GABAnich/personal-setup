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
Plug 'elixir-editors/vim-elixir'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

set number
set relativenumber
set colorcolumn=80
set cmdheight=2
set noswapfile
set tabstop=2
set shiftwidth=2

set termguicolors
let g:gruvbox_contrast_dark = 'soft'
colorscheme gruvbox
set background=dark

let g:ale_fixers = ['prettier', 'eslint']
let g:ale_fix_on_save = 1

let g:NERDSpaceDelims = 1

set updatetime=50

" vim hardcodes background color erase even if the terminfo file does
" not contain bce (not to mention that libvte based terminals
" incorrectly contain bce in their terminfo files). This causes
" incorrect background rendering when using a color theme with a
" background color.
let &t_ut = ''

" fzf
" Ctrl+F
nnoremap <silent> <C-f> :GFiles<CR>
" \/
nnoremap <silent> <Leader>/ :Lines<CR>
" \f
nnoremap <silent> <Leader>f :Ag<CR>

" coc.nvim
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
