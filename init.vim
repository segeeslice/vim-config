" --- REMAPS ---

" TODO: Use space as leader key and use control less

" Add line movement ease of use
nnoremap <C-J> :m .+1<CR>==
nnoremap <C-K> :m .-2<CR>==
inoremap <C-J> <Esc>:m .+1<CR>==gi
inoremap <C-K> <Esc>:m .-2<CR>==gi
vnoremap <C-J> :m '>+1<CR>gv=gv
vnoremap <C-K> :m '<-2<CR>gv=gv

" Add plugin remaps
noremap <C-w>t :NERDTreeToggle<CR>
noremap <C-w>f :NERDTreeFocus<CR>
noremap - :Files<CR>

" Grep for item under cursor
map <F4> :execute "vimgrep /" . expand ("<cword>") . "/j **" <Bar> cw<CR>

" Open new tab remap
noremap <C-t> :tabedit<CR>
noremap <C-w>w :tabclose<CR>

" --- OTHER PREFERENCES ---
" Change tabs to just insert 4 spaces
" Also enables smarttab to tab to previous line if applicable
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

" Ensure encoding is properly set (mainly for Windows)
" Required by YouCompleteMe
set encoding=utf-8

" Ignore case on searches
:set ic

" Add line number tracker
:set nu

" Auto-remove trailing white space on save
autocmd BufWritePre * :%s/\s\+$//e

" --- PLUGIN IMPORT ---

" TODO: Look into Lazy.vim as an alternative to VimPlug?

" Enable plugins installed from v-plugged
" Should be installed upon insertion via :PlugInstall
call plug#begin(stdpath('data') . '/plugged')

" TODO: lazygit integration?

Plug 'scrooloose/nerdtree'           " File tree
Plug 'xuyuanp/nerdtree-git-plugin'   " Show git changes in file tree
Plug 'airblade/vim-gitgutter'        " Git gutter showing changes
Plug 'rbgrouleff/bclose.vim'         " Dependency of tig-explorer
Plug 'flazz/vim-colorschemes'        " Color options
Plug 'morhetz/gruvbox'               " Gruvbox theme
" TODO: Look into
" Plug 'yuttie/comfortable-motion.vim' " Smooth scrolling
Plug 'junegunn/goyo.vim'             " Distraction free vim toggling

Plug 'jiangmiao/auto-pairs'          " Auto-brackets and things
Plug 'tpope/vim-surround'            " Change brackets and things
Plug 'scrooloose/nerdcommenter'      " Commenting help
Plug 'tpope/vim-fugitive'            " Git utilities
Plug 'tpope/vim-speeddating'         " Date utilities; prerequisite for vim-orgmode

Plug 'sophacles/vim-processing'      " Processing lang support
Plug 'leafoftree/vim-vue-plugin'     " Vue language support
Plug 'stephpy/vim-yaml'              " YAML language support
Plug 'jceb/vim-orgmode'              " Org file support

" Markdown preview util
Plug 'iamcco/markdown-preview.nvim', { 'do': ':call mkdp#util#install()', 'for': 'markdown', 'on': 'MarkdownPreview'  }

" Better status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" NOTE: Must be compiled separately
" Plug 'valloric/youcompleteme'   " Auto-completion

" File searching
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

" --- PLUGIN CONFIGURE ---

" Toggle NERDTREE after vim starts
" Refocus main window
" autocmd VimEnter * NERDTreeToggle
" autocmd VimEnter * wincmd p

" Set update time for plugins (Default 4000ms)
:set updatetime=1000

" Set the color scheme of both window and status line
autocmd VimEnter * colorscheme gruvbox
autocmd VimEnter * AirlineTheme gruvbox

" Modify the airline bar
let g:airline_section_b=''       " Hide all git data
let g:airline_section_c='%t%m'   " Only show file name and [+] if modified
let g:airline_section_y=''       " Hide file encoding data
let g:airline_section_z='%l/%L'  " Only display line count

" Set the color scheme of git gutter
let g:gitgutter_override_sign_column_highlight = 0
highlight SignColumn guibg=#928374

" Configure fzf to use silver server (respects gitignores)
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Configure nerd tree git plugin symbols
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "*",
    \ "Staged"    : "+",
    \ "Untracked" : "x",
    \ "Renamed"   : "r",
    \ "Unmerged"  : "=",
    \ "Deleted"   : "d",
    \ "Dirty"     : "~",
    \ "Clean"     : "-",
    \ "Ignored"   : "i",
    \ "Unknown"   : "?"
    \ }
