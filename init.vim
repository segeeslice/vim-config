" --- REMAPS ---

" Shift movement keys one over
noremap ; l
noremap l k
noremap k j
noremap j h

" Fix up window movement
nnoremap <C-w>; <C-w>l
nnoremap <C-w>l <C-w>k
nnoremap <C-w>k <C-w>j
nnoremap <C-w>j <C-w>h

" Add line movement ease of use
nnoremap <C-L> :m -2<CR>
nnoremap <C-K> :m +1<CR>

" Add plugin remaps
noremap <C-w>t :NERDTreeToggle<CR>
noremap <C-w>f :NERDTreeFocus<CR>
noremap - :Files<CR>

" --- OTHER PREFERENCES ---

" Change tabs to just insert 4 spaces
" Also enables smarttab to tab to previous line if applicable
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" --- PLUGIN STUFF ---

" Enable plugins installed from v-plugged
" Should be installed upon insertion via :PlugInstall
call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'       " File tree
Plug 'sophacles/vim-processing'  " Processing lang support
Plug 'flazz/vim-colorschemes'    " Color options
Plug 'morhetz/gruvbox'           " gruvbox
Plug 'airblade/vim-gitgutter'    " Git tracker
Plug 'jiangmiao/auto-pairs'      " Auto-brackets and things
Plug 'tpope/vim-surround'        " Change brackets and things
Plug 'scrooloose/nerdcommenter'  " Commenting help
" Plug 'scrooloose/syntastic'      " Linter
Plug 'terryma/vim-multiple-cursors'

" Better status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" NOTE: Must be compiled separately
Plug 'valloric/youcompleteme'   " Auto-completion

" File searching
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

" Toggle NERDTREE after vim starts
" Refocus main window
" autocmd VimEnter * NERDTreeToggle
" autocmd VimEnter * wincmd p

" Set update time for plugins (Default 4000ms)
:set updatetime=1000

" Set the color scheme of both window and status line
autocmd VimEnter * colorscheme gruvbox
autocmd VimEnter * AirlineTheme gruvbox

" Set the color scheme of git gutter
let g:gitgutter_override_sign_column_highlight = 0
highlight SignColumn guibg=#928374

" Auto-remove trailing white space on save
autocmd BufWritePre * :%s/\s\+$//e
