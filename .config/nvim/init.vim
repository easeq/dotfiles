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

:set guifont=Source\ Code\ Pro\ Medium\ for\ Powerline\ 11

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
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'chrisbra/csv.vim'
Plug 'alvan/vim-closetag'
Plug 'suy/vim-context-commentstring'
Plug 'ThePrimeagen/harpoon'
Plug 'easymotion/vim-easymotion'

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
" Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

" File Explorer with Icons
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" Plug 'hashivim/vim-terraform'

" Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }

set encoding=UTF-8

call plug#end()


if (exists('+termguicolors'))
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
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
highlight ColorColumn guifg=#333333 guibg=#333333 ctermbg=0
highlight VertSplit guibg=#555555 guifg=#555555 ctermbg=6 ctermfg=0

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
        \ 'jsx_text' : '{/*%s*/}',
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
nmap <silent>a <cmd> :lua require("harpoon.mark").add_file()<cr>
nmap <silent>m <cmd> :lua require("harpoon.ui").toggle_quick_menu()<cr>
" nmap <silent>d <cmd> :lua require("harpoon.ui").nav_prev()<cr>
" nmap <silent>f <cmd> :lua require("harpoon.ui").nav_next()<cr>

" Easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" nvim treesitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
ensure_installed = {
  "json",
  "javascript",
  "html",
  "hcl",
  "go",
  "lua",
  "python",
  "php",
  "rust",
  "typescript",
  "yaml",
  "toml",
  "tsx",
  "make",
  "regex",
  "graphql",
  "dockerfile",
  "bash",
  "css",
  "dot",
  "gomod",
  "markdown",
  "scss"
  },

-- Install languages synchronously (only applied to `ensure_installed`)
sync_install = false,

-- List of parsers to ignore installing
-- ignore_install = { "javascript" },

highlight = {
  -- `false` will disable the whole extension
enable = true,

-- list of language that will be disabled
-- disable = { "c", "rust" },

-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
-- Using this option may slow down your editor, and you may see some duplicate highlights.
-- Instead of true it can also be a list of languages
additional_vim_regex_highlighting = false,
},
}
EOF


" nvim-tree
let g:nvim_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_change_dir_global = 1 "0 by default, use :cd when changing directories.
let g:nvim_tree_disable_window_picker = 1 "0 by default, will disable the window picker.
let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
let g:nvim_tree_symlink_arrow = ' >> ' " defaults to ' ➛ '. used as a separator between symlinks' source and target.
let g:nvim_tree_respect_buf_cwd = 1 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
let g:nvim_tree_create_in_closed_folder = 0 "1 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
let g:nvim_tree_refresh_wait = 500 "1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.
let g:nvim_tree_window_picker_exclude = {
      \   'filetype': [
        \     'notify',
        \     'packer',
        \     'qf'
        \   ],
        \   'buftype': [
          \     'terminal'
          \   ]
          \ }
" Dictionary of buffer option names mapped to a list of option values that
" indicates to the window picker that the buffer's window should not be
" selectable.
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_show_icons = {
      \ 'git': 1,
      \ 'folders': 1,
      \ 'files': 1,
      \ 'folder_arrows': 1,
      \ }
"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath.
"if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
"but this will not work when you set indent_markers (because of UI conflict)

" default will show icon by default if no icon is provided
" default shows no icon by default
let g:nvim_tree_icons = {
      \ 'default': '',
      \ 'symlink': '',
      \ 'git': {
        \   'unstaged': "✗",
        \   'staged': "✓",
        \   'unmerged': "",
        \   'renamed': "➜",
        \   'untracked': "★",
        \   'deleted': "",
        \   'ignored': "◌"
        \   },
        \ 'folder': {
          \   'arrow_open': "",
          \   'arrow_closed': "",
          \   'default': "",
          \   'open': "",
          \   'empty': "",
          \   'empty_open': "",
          \   'symlink': "",
          \   'symlink_open': "",
          \   }
          \ }

nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
" NvimTreeOpen, NvimTreeClose, NvimTreeFocus, NvimTreeFindFileToggle, and NvimTreeResize are also available if you need them

set termguicolors " this variable must be enabled for colors to be applied properly

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue


lua <<EOF

-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  auto_close          = false,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  update_to_buf_dir   = {
  enable = true,
  auto_open = true,
  },
diagnostics = {
enable = false,
icons = {
  hint = "",
  info = "",
  warning = "",
  error = "",
  }
},
  update_focused_file = {
  enable      = false,
  update_cwd  = false,
  ignore_list = {}
  },
system_open = {
  cmd  = nil,
  args = {}
  },
filters = {
  dotfiles = false,
  custom = {}
  },
git = {
enable = true,
ignore = true,
timeout = 500,
},
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
      },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
    },
  trash = {
    cmd = "trash",
    require_confirm = true
    }
  }

EOF

" indent-blankline
lua <<EOF

vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
  space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = true,
  }

EOF
