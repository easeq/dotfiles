:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set ttyfast
:set autowrite
:set showcmd
:set incsearch
:set magic
:set colorcolumn=80,100
:set nowrap
:set fileencoding=utf-8
:set scrolloff=10
:set cursorline
:set encoding=utf-8

:set guifont=Source\ Code\ Pro\ for\ Powerline\ Medium\ 11

" Nice menu when typing `:find *.py`
set wildmode=longest,list,full
set wildmenu
" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*
set wildignore+=**/cache/*
set wildignore+=**/generated/*
set wildignore+=**/page_cache/*

filetype plugin on
filetype plugin indent on

inoremap ' ''<Left>
inoremap " ""<Left>
" inoremap < <><Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>

runtime macros/matchit.vim

" Different tab/space stops"
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype css setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype scss setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype json setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType make setlocal noexpandtab
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype go setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype php setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
autocmd Filetype tf setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype rs setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
autocmd Filetype js setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype ts setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype jsx setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype tsx setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype vim setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype sql setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

call plug#begin("~/.vim/plugged")
" Theme
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'joshdick/onedark.vim'
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'tpope/vim-obsession'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/blueyed/vim-diminactive'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'sbdchd/neoformat'
Plug 'Yggdroot/indentLine'
Plug 'chrisbra/csv.vim'
Plug 'alvan/vim-closetag'
Plug 'suy/vim-context-commentstring'
Plug 'ThePrimeagen/harpoon'

" Language Client
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': 'yarn install --frozen-lockfile'}
let g:coc_global_extensions = [
            \ 'coc-emmet',
            \ 'coc-css',
            \ 'coc-html',
            \ 'coc-json',
            \ 'coc-prettier',
            \ 'coc-tsserver',
            \ 'coc-phpls',
            \ 'coc-eslint',
            \ 'coc-go',
            \ 'coc-rls',
            \ 'coc-markdownlint',
            \ 'coc-php-cs-fixer',
            \ 'coc-pyright',
            \ 'coc-sh',
            \ 'coc-snippets',
            \ 'coc-sql',
            \ 'coc-xml',
            \ 'coc-yaml'
            \ ]

" TypeScript Highlighting
" Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript'
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

" File Explorer with Icons
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

Plug 'hashivim/vim-terraform'

" Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }

set encoding=UTF-8

call plug#end()


" Enable theming support
if (has("termguicolors"))
    set termguicolors
endif

" Theme
set background=dark
syntax enable
colorscheme dracula

highlight Cursor guifg=white guibg=#111111
highlight iCursor guifg=red guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

" set winhighlight=Normal:MyNormal,NormalNC:MyNormalNC
set fillchars=vert:\ ,fold:-,diff:-
highlight ColorColumn guifg=#555555 guibg=#555555 ctermbg=0
highlight VertSplit guibg=#333333 guifg=#333333 ctermbg=6 ctermfg=0

let g:NERDTreeShowHidden = 0
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" Remap escape to qq
inoremap qq <Esc>

" Find files using Telescope command-line sugar.
nnoremap <silent>ff <cmd>Telescope find_files<cr>
nnoremap <silent>fg <cmd>Telescope live_grep<cr>
nnoremap <silent>fb <cmd>Telescope buffers<cr>
nnoremap <silent>fh <cmd>Telescope help_tags<cr>

" open new split panes to right and below
set splitright
set splitbelow

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

" Move half page up-down using Ctrl+k and Ctrl+j respectively
nnoremap <C-k> <C-u>
nnoremap <C-j> <C-d>

" Commmenting using vim-commentary
nmap <C-m> gcc
vmap <C-m> gc

" nnoremap <C-f> :NERDTreeFocus<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<cr>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" open terminal on ctrl+;
" uses zsh instead of bash
function! OpenTerminal()
    split term://bash
    resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>


" air-line
let g:airline_theme='dracula'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = '_'
let g:airline_left_alt_sep = '_'
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = '|'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" vim-indentline
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" closetag
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx,*.ts,*.tsx'
" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
" let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
let g:closetag_filetypes = 'html,xhtml,phtml'
" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_emptyTags_caseSensitive = 1
" dict
" Disables auto-close if not in a "valid" region (based on filetype)
let g:closetag_regions = {
            \ 'typescript.tsx': 'jsxRegion,tsxRegion',
            \ 'javascript.jsx': 'jsxRegion',
            \ 'typescriptreact': 'jsxRegion,tsxRegion',
            \ 'javascriptreact': 'jsxRegion',
            \ }
" Shortcut for closing tags, default is '>'
let g:closetag_shortcut = '>'
" Add > at current position without closing the current tag, default is ''
let g:closetag_close_shortcut = '<leader>>'

" " vim-context-commentstring
if exists('g:context#commentstring#table')
    let g:context#commentstring#table['javascript.jsx'] = {
                \ 'jsComment' : '// %s',
                \ 'jsImport' : '// %s',
                \ 'jsxStatment' : '// %s',
                \ 'jsxRegion' : '{/*%s*/}',
                \}
endif

" neoformat
" let g:neoformat_try_node_exe = 1
" " Enable alignment
let g:neoformat_basic_format_align = 1
" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1
" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1
let g:neoformat_run_all_formatters = 1
let g:neoformat_try_formatprg = 1

" augroup NeoformatAutoFormat
"     autocmd!
"     autocmd FileType javascript,javascript.jsx setlocal formatprg=prettier\
"                                                             \--stdin\
"                                                             \--print-width\ 80\
"                                                             \--single-quote\
"                                                             \--trailing-comma\ es5
"     autocmd BufWritePre *.js,*.jsx Neoformat
" augroup END

" format code on save
augroup fmt
    autocmd!
    autocmd BufWritePre * undojoin | Neoformat
augroup END

" organize go imports on save
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
autocmd FileType go nmap gtj :CocCommand go.tags.add json<cr>
autocmd FileType go nmap gty :CocCommand go.tags.add yaml<cr>
autocmd FileType go nmap gtx :CocCommand go.tags.clear<cr>

" harpoon
nmap <silent>s <cmd> :lua require("harpoon.mark").add_file()<cr>
nmap <silent>m <cmd> :lua require("harpoon.ui").toggle_quick_menu()<cr>
nmap <silent>f <cmd> :lua require("harpoon.ui").nav_prev()<cr>
nmap <silent>a <cmd> :lua require("harpoon.ui").nav_next()<cr>
