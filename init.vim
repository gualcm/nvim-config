source $HOME/.config/nvim/searchblink.vim

" ************** NVIM SETTINGS ******************
set termguicolors
set hidden
set shiftwidth=2
set softtabstop=2
set ignorecase
set smartcase
set mouse=nv
set number
set expandtab
set updatetime=200
autocmd BufEnter * :syntax sync fromstart

" ***************** BINDINGS ********************
let mapleader = "\<Space>"
" back beginning of change when using .
nmap . .`[
" apply . to visual block
vnoremap <silent> . :normal .<CR>
" we dumb
command Vs vs
command WQ wq
command Wq wq
command W w
command Q q
command Bd bd
map <leader>c "*y
" tab navigation
nnoremap <Leader>tn :tabnext<CR>
nnoremap <Leader>tp :tabprev<CR>
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt
nnoremap <Leader>9 9gt
" split navigation
nnoremap <C-j> <C-W><C-j>
nnoremap <C-h> <C-W><C-h>
nnoremap <C-k> <C-W><C-k>
nnoremap <C-l> <C-W><C-l>
nnoremap <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>
" window resizing
nnoremap <leader>ws :resize -10<CR>
nnoremap <leader>wt :resize +10<CR>
nnoremap <leader>ww :vertical resize +20<CR>
nnoremap <leader>wn :vertical resize -20<CR>
" remove highlight
nnoremap <leader>nh :noh<CR>
" error/warning navigation
nmap <silent> <leader>ah :call <SID>show_documentation()<CR>
nmap <silent> <leader>al :lopen<CR>
nmap <silent> <leader>an <Plug>(coc-diagnostic-next)
nmap <silent> <leader>ap <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>ag <Plug>(coc-definition)
nmap <silent> <leader>ar <Plug>(coc-references)
" prettier (coc-prettier)
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" coc-yank
nnoremap <silent> <leader>p  :<C-u>CocList -A --normal yank<cr>
" markdown
nmap <silent> <leader>mp <Plug>MarkdownPreviewToggle
" nerdtree
nnoremap <Leader>tr :NERDTreeToggle<CR>
nnoremap <Leader>fr :NERDTreeFind<CR>
" ctrlp
nnoremap <C-b> :CtrlPBuffer<CR>
nnoremap %/ :Ag!<space>

" ***************** PLUGINS ********************
" vim-closetag
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js,*.jsx,*.tsx"

" coc
let g:coc_global_extensions = ['coc-omnisharp', 'coc-highlight', 'coc-json', 'coc-flow', 'coc-css', 'coc-html', 'coc-yank', 'coc-eslint', 'coc-prettier', 'coc-tsserver']
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" nerdree
let g:NERDTreeIgnore=['node_modules$[[dir]]']

" ctrlp
" let g:ctrlp_by_filename=1
let g:ctrlp_custom_ignore = 'ios\|android\|node_modules\|DS_Store\|git'
let g:ctrlp_working_path_mode = 0

" silver searcher
let g:ag_working_path_mode="r"

" plug
call plug#begin('~/.config/nvim/plugged')
Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app & yarn install'}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'sheerun/vim-polyglot'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'rking/ag.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()

colorscheme vaporgual
hi CocFloating  guibg=#302E33
