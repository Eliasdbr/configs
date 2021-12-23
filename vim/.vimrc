" --- Configuraciones

syntax on

set hidden
set noerrorbells
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=2
set tabstop=2
set smartindent
set nu rnu
set smartcase
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set signcolumn=yes
set splitright

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" --- Plugins
call plug#begin('~/.vim/plugged')
" -Colores 
" Gruvbox
Plug 'morhetz/gruvbox'
" Monokai
Plug 'sickill/vim-monokai'
" TokyoNight
Plug 'ghifarit53/tokyonight-vim'
" -Autocompletar
Plug 'Valloric/YouCompleteMe'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" -Arbol de deshacer
Plug 'mbbill/undotree'
" -Buscador de archivos
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" -Colores JavaScript
"Plug 'pangloss/vim-javascript'
Plug 'yuezk/vim-js'
" -Colores React
"Plug 'mxw/vim-jsx' " deprecated
Plug 'MaxMEllon/vim-jsx-pretty'
" -Colores TypeScript
Plug 'leafgarland/typescript-vim'
" -Colores C/C++
Plug 'bfrg/vim-cpp-modern'
" -Preview Colores-
Plug 'ap/vim-css-color'
" -Muestra indentación
set list lcs=tab:\┊\ 

" YouCompleteMe
" Cierra la pantalla partida de la documentación
let g:ycm_autoclose_preview_window_after_insertion = 1

"Plug 'Yggdroot/indentLine'
"let g:indentLine_enabled = 1
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"Plug 'nathanaelkane/vim-indent-guides'
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=grey ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=grey ctermbg=4

let mapleader = " "

call plug#end()

" Aplica los colores de texto de gruvbox
colorscheme tokyonight
set background=dark

" --- Mapeados

" - Modo Normal
" Remapea el comando a la ñ
nnoremap ñ :
" Ajusta tamaño de ventanas
nnoremap <C-Left> <C-w>2<
nnoremap <C-Right> <C-w>2>
nnoremap <C-Up> <C-w>2+
nnoremap <C-Down> <C-w>2-


" - Modo Visual
" Copiado externo
vnoremap <C-c> "+y
map <C-v> "+P
" Comentar líneas (Visual Block)
vnoremap / 2I/<Esc>
" Indentar líneas (Visual Block)
vnoremap <c-i> I<c-i><Esc>
" Swapear lineas
vnoremap <A-Down> :m +1<CR>V
vnoremap <A-Up> :m -2<CR>V

" - Leader
" Abre un mini explorador de archivos
nnoremap <leader>f :FZF<CR>
" Cambia entre pestañas
nnoremap <leader><c-i> :tabn<CR>
" Se mueve entre ventanas fraccionadas
nnoremap <leader><Left> :wincmd h<CR>
nnoremap <leader><Right> :wincmd l<CR>
nnoremap <leader><Up> :wincmd k<CR>
nnoremap <leader><Down> :wincmd j<CR>
" Bloque visual
command! Vb normal! <C-v>
nnoremap <leader>v :Vb<CR>

