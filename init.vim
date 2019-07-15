source $HOME/.config/nvim/searchblink.vim

" ***********************************************
" ************** NVIM SETTINGS ******************
" ***********************************************
syntax on
set ignorecase
set smartcase
set background=dark
set expandtab
set shiftwidth=3
set softtabstop=3
set number
set mouse=a
set wildmenu                 
set autoread                  
set laststatus=1
set hidden
set completeopt=menuone,noselect
set updatetime=250
autocmd BufEnter * :syntax sync fromstart
autocmd CursorHold * silent call CocActionAsync('highlight')

" ***********************************************
" ***************** PLUGINS *********************
" ***********************************************
call plug#begin('~/.config/nvim/plugged')
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'sheerun/vim-polyglot'
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'
Plug 'jparise/vim-graphql'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-buftabline'
Plug 'ryanoasis/vim-devicons'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'hashrocket/vim-macdown'
" Plug 'Lokaltog/vim-monotone'
call plug#end()

" ***********************************************
" ***************** BINDINGS ********************
" ***********************************************
let mapleader = "\<Space>"
nnoremap <leader>so :source ~/.config/nvim/init.vim<cr>
command WQ wq
command Wq wq
command W w
command Q q
" buffers
nmap <Leader>1 <Plug>BufTabLine.Go(1)
nmap <Leader>2 <Plug>BufTabLine.Go(2)
nmap <Leader>3 <Plug>BufTabLine.Go(3)
nmap <Leader>4 <Plug>BufTabLine.Go(4)
nmap <Leader>5 <Plug>BufTabLine.Go(5)
nmap <Leader>6 <Plug>BufTabLine.Go(6)
nmap <Leader>7 <Plug>BufTabLine.Go(7)
nmap <Leader>8 <Plug>BufTabLine.Go(8)
nmap <Leader>9 <Plug>BufTabLine.Go(9)
nmap <Leader>0 <Plug>BufTabLine.Go(10)
nnoremap <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>
" tab navigation
nnoremap <Leader>t1 1gt
nnoremap <Leader>t2 2gt
nnoremap <Leader>t3 3gt
" split navigation
nnoremap <C-j> <C-W><C-j>
nnoremap <C-h> <C-W><C-h>
nnoremap <C-k> <C-W><C-k>
nnoremap <C-l> <C-W><C-l>
" nerdtree
nnoremap <Leader>tr :NERDTreeToggle<CR>
" disable arrows
map <Up> <Nop>
map <Down> <Nop>
map <Left> <Nop>
map <Right> <Nop>
noremap! <Up> <Nop>
noremap! <Down> <Nop>
noremap! <Left> <Nop>
noremap! <Right> <Nop>
" remove highlight
nnoremap <leader>nh :noh<CR>
" window resizing
nnoremap <leader>ws :resize -10<CR>
nnoremap <leader>wt :resize +10<CR>
nnoremap <leader>ww :vertical resize +20<CR>
nnoremap <leader>wn :vertical resize -20<CR>
" error/warning navigation
nmap <silent> <leader>an :ALENext<cr>
nmap <silent> <leader>ap :ALEPrevious<cr>
nmap <silent> <leader>ag <Plug>(coc-definition)
nmap <silent> <leader>af <Plug>(coc-codeaction)
nmap <silent> <leader>al :lopen<CR>
nmap <silent> <leader>ad :ALEDetail<cr>
nmap <silent> <leader>ah :call <SID>show_documentation()<CR>

" ***********************************************
" ************** PLUGIN SETTINGS ****************
" ***********************************************
" vim-closetag
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js,*.jsx,*.tsx"

" coc
let g:coc_global_extensions = ['coc-tsserver', 'coc-css', 'coc-html', 'coc-yank']
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


" ctrlp
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" NERDTree
let g:NERDTreeIgnore=['node_modules$[[dir]]']

" ALE Linter
let g:ale_sign_warning = '●'
let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1
let g:ale_fixers = {
\   'typescript': ['prettier'],
\   'javascript': ['prettier'],
\   'json': ['prettier'],
\}
" Do not lint or fix minified files.
let g:ale_pattern_options = {
\ '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
\ '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
\}

" buftabline
let g:buftabline_indicators = 1 " Para que muestre qué files se han modificado
let g:buftabline_numbers = 2
