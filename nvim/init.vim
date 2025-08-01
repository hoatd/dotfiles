set nocompatible                                                                " support viminfo,...
set encoding=utf-8			                                                        " using utf-8 as the internal character encoding 
set fileencoding=utf-8			                                                    " forcely file saving in utf-8 encode
set fileformats=unix,dos,mac                                                    " support all newline formats
set mouse=a                                                                     " enable using mouse all modes
set mousemodel=popup_setpos                                                     " right-click to open the context menu
set clipboard=unnamedplus                                                       " cross-platform in using system clipboard
set belloff=all                                                                 " no beep at all
set visualbell                                                                  " no visual beep
set noerrorbells                                                                " no error beep
set title                                                                       " show file in titlebar
set titlestring=%t\ -\ nvim                                                     " title using filename following by nvim
set ruler                                                                       " show cursor position in statusline
set showmode                                                                    " show mode in status bar (insert/replace/...)
set showcmd                                                                     " show commandline in bottom bar
set cmdheight=1                                                                 " number of screen lines of the command-line
set display+=lastline,uhex                                                      " display as much as possible the lastline, show unprintable charaters as hex
set history=1000                                                                " remember commands and search history
set selection=inclusive
set selectmode=mouse,key
set number                                                                      " show line numbers
set numberwidth=3
set signcolumn=yes                                                              " always show signcolumns
let &t_SI.="\e[5 q"                                                             " cursor shapes in SI = INSERT mode
let &t_SR.="\e[4 q"                                                             " cursor shapes in SR = REPLACE mode
let &t_EI.="\e[1 q"                                                             " cursor shapes in EI = NORMAL mode (ELSE)
set relativenumber                                                              " relative line number as default
autocmd InsertEnter * set norelativenumber                                      " hide relativenumber in insert mode
autocmd InsertLeave *
\   if &diff | set norelativenumber |
\   else     | set relativenumber   |
\   endif
set cursorline                                                                  " show cursorline
autocmd WinEnter * set cursorline                                               " show cursorline in focused window
autocmd WinLeave *                                                              " hide cursorline in unfocused window
\   if &diff | set cursorline   |
\   else     | set nocursorline |
\   endif
autocmd InsertEnter * set cursorline                                            " hide cursorline in insert mode
autocmd InsertLeave * set cursorline                                            " show cursorline in not insert mode
" set cursorcolumn                                                                " show cursorcolumn
" autocmd WinEnter * set cursorcolumn                                             " show cursorcolumn in focused window
" autocmd WinLeave *
" \   if &diff | set cursorcolumn   |
" \   else     | set nocursorcolumn |
" \   endif
" autocmd InsertEnter * set nocursorcolumn                                        " hide cursorcolumn in insert mode
" autocmd InsertLeave * set cursorcolumn                                          " show cursorcolumn in not insert mode
set nostartofline                                                               " keep cursor postion when switching between buffers
set tabpagemax=50                                                               " max 50 tab pages
set showtabline=2                                                               " always show tabline
set splitbelow                                                                  " prefered horizontal split position below
set splitright                                                                  " prefered vertical split position right
set tabstop=4                                                                   " number of columns occupied by a tab character
set softtabstop=4                                                               " multiple spaces as tabstop so <BS> does the right thing
set shiftwidth=4                                                                " number of spaces to use for autoindents
set shiftround                                                                  " use multiple of shiftwidth when indenting with '<' and '>' command
set smarttab                                                                    " smart tab handling for indenting
set expandtab                                                                   " converts tabs to white space
set copyindent                                                                  " copy the previous indentation on autoindenting
set autoindent                                                                  " indent a new line the same amount as the line just above
set smartindent                                                                 " recognizes some C syntax to increase/reduce the indent
" set cindent                                                                     " smart indenting for c-like code
" set cinoptions=(0,+1s,:0,=2s,>2s,c1s,g2s,h2s,j1,l1,m1,p2s,t0,u0,w1
" set cinoptions=b1,g0,N-s,t0,(0,W4
syntax on                                                                       " syntax highlighting
filetype plugin indent on                                                       " use the file type plugins
autocmd Filetype vim setlocal ts=2 sw=2 et sts=2
autocmd Filetype lua setlocal ts=2 sw=2 et sts=2
" autocmd FileType text setlocal foldmethod=manual
" autocmd Filetype json setlocal ts=2 sw=2 et sts=2
" autocmd Filetype c,cpp setlocal ts=4 sw=4 et sts=4 foldmethod=syntax
" autocmd Filetype python setlocal ts=4 sw=4 et sts=4 foldmethod=indent
" autocmd FileType markdown setlocal foldmethod=marker
" autocmd FileType html setlocal foldmethod=syntax
" autocmd FileType javascript setlocal foldmethod=marker
set backspace=indent,eol,start                                                  " allow backspacing over autoindent, line breaks, and the start of insert in insert mode
set scrolloff=3                                                                 " always show at least 3 lines above/ below cursor off the edges of the screen
set sidescrolloff=5                                                             " always show at least 5 chars left/ right cursor off the edges of the screen
set textwidth=79                                                                " max line length
set colorcolumn=80,120                                                          " show visual border at column 80
set nowrap                                                                      " do not wrap lines by default
set linebreak                                                                   " do wrap lines at convenient points
set breakindent                                                                 " Enables indenting of wrapped lines to match the start of the original line.
set showbreak=↳\                                                                " Sets a nicer symbol as the wrap prefix
set cpoptions+=n                                                                " Adds n to 'cpo', so showbreak is shown even in the middle of a multi-byte character.
set foldmethod=indent                                                           " fold based on indent level by default
set foldlevel=99                                                                " fold level max
set foldlevelstart=10                                                           " only very nested blocks are folded
set foldnestmax=10                                                              " 10 nested fold max
set nofoldenable                                                                " do not fold by default
set incsearch                                                                   " search as characters are entered
set hlsearch                                                                    " highlight all search results
set ignorecase                                                                  " case insensitive matching by default
set smartcase                                                                   " use case if any caps used unless explicitly using an uppercase character
set gdefault                                                                    " this makes search/replace global by default
set magic                                                                       " change the way backslashes are used in search patterns
set inccommand=split                                                            " show search replacement targets
set showmatch                                                                   " show matching brackets like [] {} and ().
set matchpairs+=(:),[:],{:},<:>,\':\',\":\",\´:\´,\`:\`                         " set default pairs, and later install matchit.vim plugin
set whichwrap+=<,>,h,l,[,]                                                      " allow backspace and cursor keys to cross line boundaries
set hidden                                                                      " allows making buffers hidden even with unsaved changes
set switchbuf=useopen,uselast,usetab,newtab                                     " jump to the first open window that contains the specified buffer
set lazyredraw                                                                  " speed up on large files scrolling that occurs when using mouse and relative numbers
set autoread                                                                    " auto read file be changed outside
set swapfile
set dir=~/.vim/swap
set backup                                                                      " enable backup files.
set writebackup                                                                 " enable backup on write
set backupdir=~/.vim/backup                                                     " backup dir
set undofile                                                                    " store undo state even when files are closed
set undodir=~/.vim/undo                                                         " undofile dir
set undolevels=1000                                                             " use many levels of undo
set undoreload=10000
set nobackup                                                                    " no backup~ files.
set backupdir=~/.vim/backup                                                     " backup dir
set tags=~/.vim/tags                                                            " load standard tag files
set tagstack
set list                                                                        " enable visibility of invisible characters
set list! listchars=eol:↲,trail:¤,tab:→\ ,space:˰,nbsp:␣,precedes:«,extends:»   " display unprintable characters for special positions in text lines
set fillchars=eob:~,horiz:━,vert:┃,fold:\ ,foldopen:◣,foldclose:◥,diff:-
" show wild menu of suggestions when typing commands in command mode
" when type the first tab, it will complete as much as possible, the second
" tab hit will provide a list, the third and subsequent tabs will cycle through
" completion options so you can complete the file without further keys
" make file/command completion useful
set wildmenu                                                                    " tab completion with menu, bash-like
set wildmode=longest,list,full                                                  " get bash-like tab completions
set wildignore+=.git,*.svn,*.hg                                                 " ignore .git and svn folders
set wildignore+=.DS_Store,.DS_Store*,DS_Store*                                  " ignore Apple macOS Desktop Services Store
set wildignore+=*.swp,*.tmp,*.bak                                               " ignore swap files
set wildignore+=*.a,*.o,*.obj                                                   " ignore static library and intermediate object files
set wildignore+=*.pyc*,*.pyx*,*pycache,__pycache__                              " ignore compiled python, cpython ouput
set completeopt=menu                                                            " displays the completion menu
set completeopt+=longest                                                        " inserts the longest common prefix of the matches
set completeopt+=noselect                                                       " does not automatically select the first completion item
set completeopt+=noinsert                                                       " does not insert the completion item automatically
set completeopt+=menuone                                                        " show popup menu also when there is only one match available
set completeopt+=preview                                                        " show extra information about currently selected completion
set completeopt+=noinsert                                                       " do not insert any text for match until the user selects it from the menu
set wildoptions=pum                                                             " Shows the command-line completion menu using a popup menu (pum) instead of inline
set pumblend=15                                                                 " Adds transparency to the popup menu
set winblend=15                                                                 " Applies transparency to floating windows
set laststatus=3                                                                " Global statusline for the whole editor
set shortmess=atI                                                               " avoid annoying 'hit enter to continue' messages
set path+=.                                                                     " find a file in the directory of the current file
set path+=**                                                                    " find a file in the current directory recursively
set formatoptions-=a                                                            " no auto formatting
set formatoptions+=c                                                            " auto wrap comments respect textwidth
set formatoptions+=j                                                            " remove a comment leader when joining lines 
set formatoptions+=n                                                            " recognize numbered lists while format.
set formatoptions+=o                                                            " continue comment leader when hit o or O 
set formatoptions+=q                                                            " allow formatting comments w/ gq
set formatoptions+=r                                                            " continue insert the current comment leader when pressing enter.
set formatoptions-=t                                                            " no auto wrap using 'textwidth'
set formatoptions-=2                                                            " not use indent of the second line
set formatoptions+=l                                                            " prevents long lines in comments from being brokenset diffopt+=vertical                                                           " always use vertical diffs
set formatoptions+=m                                                            " prevents multi long lines in comments from being brokenset diffopt+=vertical                                                           " always use vertical diffs
set diffopt+=vertical                                                           " always use vertical diffs
set diffopt+=filler                                                             " always use filler in diffs
set diffopt+=iwhiteall                                                          " ignore all white space
set viminfo^=!                                                                  " do not save global marks
set viminfo^='100                                                               " remember local marks last 100 files
set viminfo^=:100                                                               " remember last 100 used commands
set viminfo^=<100                                                               " remember last 100 input lines
set viminfo^=@100                                                               " remember last 100 lines per register
set viminfo^=/100                                                               " remember search pattern history
set viminfo^=%100                                                               " remember buffer history
set shada^=!                                                                    " do not save global marks
set shada^='100                                                                 " remember local marks last 100 files
set shada^=:100                                                                 " remember last 100 used commands
set shada^=<100                                                                 " remember last 100 input lines
set shada^=@100                                                                 " remember last 100 lines per register
set shada^=/100                                                                 " remember search pattern history
set shada^=%100                                                                 " remember buffer history
set sessionoptions-=blank                                                       " remove keeping empty windows
set sessionoptions-=help                                                        " remove keeping help windows
set sessionoptions+=options                                                     " keep all options and mappings, including global and local values
set sessionoptions+=buffers                                                     " saves all buffers, including hidden and unloaded buffers
set sessionoptions+=folds                                                       " saves all kinds of code folds
set sessionoptions+=curdir                                                      " saves the current directory
set sessionoptions+=resize
set sessionoptions+=winpos                                                      " saves window positions
set sessionoptions+=winsize                                                     " saves window sizes
set sessionoptions+=terminal                                                    " saves terminal windows
set sessionoptions+=tabpages                                                    " saves all tab pages
set sessionoptions+=localoptions
set nrformats+=alpha                                                            " Increment/Decremental list by Ctrl+A/Ctrl+X
set timeout                                                                     " Enables key sequence timeout
set timeoutlen=500                                                              " Sets timeout duration to 300ms
set ttimeout                                                                    " Enables key sequence timeout for terminal key codes
set ttimeoutlen=100                                                              " Sets timeout duration to 50ms for terminal key codes

let mapleader=","

nnoremap <leader>d "_d                                                          " delete without yanking into default register in normal mode
vnoremap <leader>d "_d                                                          " delete without yanking into default register in visual mode
nnoremap <leader>p "_dP                                                         " replace selected text by default register without yanking into default register in normal mode
vnoremap <leader>p "_dP                                                         " replace selected text by default register without yanking into default register in visual mode
" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Quickfix list navigation
nnoremap ]q :cnext<CR>
nnoremap [q :cprev<CR>
" Y yank to end of line (more intuitive)
nnoremap Y y$
" Keep search matches in the middle of the window
nnoremap n nzzzv
nnoremap N Nzzzv

inoremap <silent> <S-Insert> <C-R>+	                                            " nvim windows https://jdhao.github.io/2019/01/17/nvim_qt_settings_on_windows/

autocmd FileType qf wincmd J                                                    " make the quickfix window is always on the bottom and takes the whole horizontal space
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
\   if mode() != 'c' | checktime | endif                                                                       " trigger autoread when files changes on disk

autocmd FileChangedShellPost *
\   echohl WarningMsg |
\       echo "File has changed on disk. Buffer reloaded." |
\   echohl None                                                                 " notification after file change

autocmd BufEnter *
\   if &buftype == 'terminal' | startinsert | endif                                                                       " start terminal in insert mode

tnoremap <Esc> <C-\><C-n>                                                       " take terminal to normal mode with escape

autocmd TextYankPost *
\   silent!
\   lua vim.highlight.on_yank { higroup='IncSearch', timeout=200 }              " highlight yanked text for some msec

autocmd BufReadPre *
\   if getfsize(expand("%")) > 10000000 |
\       setlocal noswapfile |
\       setlocal bufhidden=unload |
\       setlocal undolevels=-1 |
\   endif                                                                       " Large file optimizations

autocmd BufReadPost *
\   if getfsize(expand("%")) > 10000000 |
\       syntax off |
\       lua vim.treesitter.stop()
\   endif                                                                       " Disable syntax for file size >= 1MB

"==================PLUGINS INSTALLATION========================================
""" install plugin manager vim-plug if it is not yet installed
let s:plug_path = stdpath('data') . '/site/autoload/plug.vim'
if empty(glob(s:plug_path))
  echo "VIM-PLUG NOT FOUND! Installing ..."
  if has('win32') || has('win64')
    silent execute '!powershell -Command "iwr https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -UseBasicParsing | ni ''' . s:plug_path . ''' -Force"'
  else
    silent execute '!curl -fLo ' . shellescape(s:plug_path) . ' --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  endif
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
""" install plugins using vim-plug
call plug#begin(stdpath('data') . '/plugged')
    Plug 'MunifTanjim/nui.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-neotest/nvim-nio'

    Plug 'Mofiqul/dracula.nvim'
    Plug 'nvim-tree/nvim-web-devicons'
    Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-treesitter/nvim-treesitter', {'branch': 'main', 'do': ':TSUpdate'}
    " Plug 'nvim-treesitter/nvim-treesitter-textobjects', {'branch': 'main'}
    Plug 'nvim-treesitter/nvim-treesitter-context'
    Plug 'stevearc/aerial.nvim'
    Plug 'SmiteshP/nvim-navic'
    Plug 'Bekaboo/dropbar.nvim'
    Plug 'Wansmer/treesj'
	  Plug 'numToStr/Comment.nvim'
    Plug 'nvim-neo-tree/neo-tree.nvim'
    Plug 'sindrets/diffview.nvim'
    Plug 'NeogitOrg/neogit'
    Plug 'lewis6991/gitsigns.nvim'
    Plug 'folke/persistence.nvim'
    Plug 'kevinhwang91/nvim-bqf'
    Plug 'mfussenegger/nvim-dap'
    Plug 'williamboman/mason.nvim'
    Plug 'jay-babu/mason-nvim-dap.nvim'
    " Plug 'mfussenegger/nvim-dap-python'
    Plug 'theHamsta/nvim-dap-virtual-text'
    Plug 'rcarriga/nvim-dap-ui'
    Plug 'igorlfs/nvim-dap-view'

    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'
    " Plug 'L3MON4D3/LuaSnip'
    " Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'ray-x/cmp-treesitter'
    Plug 'petertriho/cmp-git'

    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-symbols.nvim'
    Plug 'nvim-telescope/telescope-dap.nvim'
    " Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    Plug 'nvim-telescope/telescope-ui-select.nvim'
    Plug 'nvim-telescope/telescope-file-browser.nvim'
    Plug 'debugloop/telescope-undo.nvim'
    Plug 'VPavliashvili/json-nvim'
    Plug 'antosha417/nvim-lsp-file-operations'
    " Plug 'Civitasv/cmake-tools.nvim'
    " Plug 'pmizio/typescript-tools.nvim'
    " Plug 'dmmulroy/ts-error-translator.nvim'  " Translate TS errors to plain English
    " Plug 'axelvc/template-string.nvim'       " Better template string handling
call plug#end()

"------------------------------------------------------------------------------

lua << EOF
vim.opt.termguicolors = true

require('nvim-web-devicons').setup({ default = true })

require('dracula').setup({
    show_end_of_buffer = true,
    transparent_bg = true,
    italic_comment = true,
})
vim.cmd('colorscheme dracula')

-------------------------------------------------------------------------------

-- vim.g.floating_window_border = {
--   '╭',
--   '─',
--   '╮',
--   '│',
--   '╯',
--   '─',
--   '╰',
--   '│',
-- }

-- vim.g.diagnostic_icons = {
--   Error = '',
--   Warning = '',
--   Information = '',
--   Hint = 'ﴞ',
--   Other = '',
-- }

require('bufferline').setup({
    options = {
        mode = 'buffers', -- set to "tabs" to only show tabpages instead
        numbers = 'raise(id)',
        max_name_length = 12,
        max_prefix_length = 10,
        left_trunc_marker = '',
        right_trunc_marker = '',
        truncate_names = true,
        tab_size = 12,
        color_icons = true,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        show_duplicate_prefix = true,
        duplicates_across_groups = true,
        persist_buffer_sort = true,
        move_wraps_at_ends = false,
        always_show_bufferline = true,
        auto_toggle_bufferline = true,
        separator_style = 'slope', -- slant, padded_slant, slope, padded_slope, thick, thin, or a pair {"|", "|"}
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        },
        diagnostics = 'nvim_lsp',
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            if context.buffer:current() then
                return ''
            end
            if level:match('error') then
                return ' ' .. vim.g.diagnostic_icons.Error
            elseif level:match('warning') then
                return ' ' .. vim.g.diagnostic_icons.Warning
            end
            return ''
        end,
        offsets = {
            {
                filetype = "NvimTree",
                text = "Files",
                text_align = "left",
                highlight = "Directory",
                separator = true, -- use a "true" to enable the default, or set your own character
            },
        },
        groups = {
            options = {
                toggle_hidden_on_enter = true
            },
            items = {
                {
                    name = "Docs",
                    highlight = {undercurl = true, sp = "green"},
                    auto_close = true,
                    priority = 1,
                    -- icon = "",
                    matcher = function(buf)
                        return buf.name:match('%.md')
                            or buf.name:match('%.txt')
                    end,
                    separator = {
                        style = require('bufferline.groups').separator.tab
                    },
                },
                {
                    name = "VIM",
                    highlight = {undercurl = true, sp = "green"},
                    auto_close = true,
                    priority = 1,
                    -- icon = "",
                    matcher = function(buf)
                        return buf.name:match('%.vim')
                    end,
                    separator = {
                        style = require('bufferline.groups').separator.tab
                    },
                },
                {
                    name = "GIT",
                    highlight = {undercurl = true, sp = "green"},
                    auto_close = true,
                    priority = 2,
                    -- icon = "",
                    matcher = function(buf)
                        return buf.name:match('.gitconfig')
                            or buf.name:match('.gitignore')
                            or buf.name:match('.gitmodules')
                            or buf.name:match('.gitattributes')
                            or buf.name:match('.gitkeep')
                    end,
                    separator = {
                        style = require('bufferline.groups').separator.tab
                    },
                },
                {
                    name = "JSON",
                    highlight = {undercurl = true, sp = "green"},
                    auto_close = true,
                    priority = 3,
                    -- icon = "",
                    matcher = function(buf)
                        return buf.name:match('%.json')
                    end,
                    separator = {
                        style = require('bufferline.groups').separator.tab
                    },
                },
                {
                    name = "LOG",
                    highlight = {undercurl = true, sp = "green"},
                    auto_close = true,
                    priority = 4,
                    -- icon = "",
                    matcher = function(buf)
                        return buf.name:match('%.log')
                    end,
                    separator = {
                        style = require('bufferline.groups').separator.tab
                    },
                },
                {
                    name = "C/C++",
                    highlight = {undercurl = true, sp = "green"},
                    auto_close = true,
                    priority = 5,
                    -- icon = "",
                    matcher = function(buf)
                        return buf.name:match('%.h')
                            or buf.name:match('%.hxx')
                            or buf.name:match('%.hpp')
                            or buf.name:match('%.c')
                            or buf.name:match('%.cc')
                            or buf.name:match('%.cxx')
                            or buf.name:match('%.cpp')
                    end,
                    separator = {
                        style = require('bufferline.groups').separator.tab
                    },
                },
                {
                    name = "CUDA",
                    highlight = {undercurl = true, sp = "green"},
                    auto_close = true,
                    priority = 6,
                    -- icon = "",
                    matcher = function(buf)
                        return buf.name:match('%.cu')
                    end,
                    separator = {
                        style = require('bufferline.groups').separator.tab
                    },
                },
                {
                    name = "Python",
                    highlight = {undercurl = true, sp = "green"},
                    auto_close = true,
                    priority = 7,
                    -- icon = "",
                    matcher = function(buf)
                        return buf.name:match('%.py')
                    end,
                    separator = {
                        style = require('bufferline.groups').separator.tab
                    },
                },
                {
                    name = "PASCAL",
                    highlight = {undercurl = true, sp = "green"},
                    auto_close = true,
                    priority = 8,
                    -- icon = "",
                    matcher = function(buf)
                        return buf.name:match('%.pas')
                    end,
                    separator = {
                        style = require('bufferline.groups').separator.tab
                    },
                },
            }
        }
    }
})

-------------------------------------------------------------------------------

require('lualine').setup({
    options = {
        theme = 'auto',
        -- theme = 'dracula-nvim',
        icons_enabled = true,
        section_separators = { left = '', right = ''},
        component_separators = { left = '', right = ''},
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {
            {'filename', path = 1},
            {
                function() return require('nvim-navic').get_location() end,
                cond = function() return require('nvim-navic').is_available() end
            }
        },
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {
            {
                'searchcount',
                maxcount = 999,
                timeout = 500,
            },
            'progress'
        },
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {'quickfix', 'neo-tree'},
})

-------------------------------------------------------------------------------

vim.lsp.enable('vimls')
-- vim.lsp.enable('lua_ls')
vim.lsp.enable("clangd")
vim.lsp.enable("cmake")
-- vim.lsp.enable('gopls')
-- vim.lsp.enable('ts_ls')
-- vim.lsp.enable('html')
-- vim.lsp.enable('pasls')
-- vim.lsp.enable('sqlls')
vim.lsp.enable('pyright')
vim.lsp.enable('marksman')
-- vim.lsp.enable('rust_analyzer')
-- vim.lsp.enable('postgres_lsp')
-- vim.lsp.enable('powershell_es')

-------------------------------------------------------------------------------

local treesitter_ensured_filetypes = {
    "c",
    "cpp",
    -- "cuda",
    "diff",
    -- "make",
    "cmake",
    "git_config",
    "git_rebase",
    "gitattributes",
    "gitcommit",
    "gitignore",
    "lua",
    "vim",
    "bash",
    "ssh_config",
    "csv",
    "json",
    -- "regex",
    "python",
    "pascal",
    -- "comment",
    -- "sql",
}
vim.api.nvim_create_user_command("TSEnsure", function()
    require('nvim-treesitter').install(treesitter_ensured_filetypes)
end, {})
vim.api.nvim_create_autocmd("FileType", {
    pattern = treesitter_ensured_filetypes,
    callback = function(args)
        local ft = args.match
        local lang = vim.treesitter.language.get_lang(ft)
        if vim.treesitter.language.add(lang) then
            vim.treesitter.start()
            vim.wo.foldmethod = 'expr'
            vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
            vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
    end,
})

-------------------------------------------------------------------------------

require'treesitter-context'.setup({
    enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
    multiwindow = false, -- Enable multiwindow support.
    max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
    min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
    line_numbers = true,
    multiline_threshold = 20, -- Maximum number of lines to show for a single context
    trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
    mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
    -- Separator between context and content. Should be a single character string, like '-'.
    -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
    separator = nil,
    -- separator = '-',
    zindex = 20, -- The Z-index of the context window
    on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
})
vim.api.nvim_set_hl(0, "TreesitterContextBottom", { underline = true, special = "Grey" })
vim.api.nvim_set_hl(0, "TreesitterContextLineNumberBottom", { undercurl = true, special = "Grey" })
vim.keymap.set("n", "[c", function()
    require("treesitter-context").go_to_context(vim.v.count1)
end, { silent = true, desc = "Go to Treesitter context" })

-------------------------------------------------------------------------------

require('Comment').setup({})

-------------------------------------------------------------------------------

require('dropbar').setup({})

-------------------------------------------------------------------------------

require('nvim-navic').setup({
    icons = {
        File          = "󰈙 ",
        Module        = " ",
        Namespace     = "󰌗 ",
        Package       = " ",
        Class         = "󰌗 ",
        Method        = "󰆧 ",
        Property      = " ",
        Field         = " ",
        Constructor   = " ",
        Enum          = "󰕘",
        Interface     = "󰕘",
        Function      = "󰊕 ",
        Variable      = "󰆧 ",
        Constant      = "󰏿 ",
        String        = "󰀬 ",
        Number        = "󰎠 ",
        Boolean       = "◩ ",
        Array         = "󰅪 ",
        Object        = "󰅩 ",
        Key           = "󰌋 ",
        Null          = "󰟢 ",
        EnumMember    = " ",
        Struct        = "󰌗 ",
        Event         = " ",
        Operator      = "󰆕 ",
        TypeParameter = "󰊄 ",
    },
    lsp = {
        auto_attach = true,
        preference = nil,
    },
    highlight = true,
    separator = " > ",
    depth_limit = 0,
    depth_limit_indicator = "..",
    safe_output = true,
    lazy_update_context = false,
    click = false,
    format_text = function(text)
        return text
    end,
})

-------------------------------------------------------------------------------

require("aerial").setup({
    attach_mode = "global",
    show_guides = true,
    -- optionally use on_attach to set keymaps when aerial has attached to a buffer
    on_attach = function(bufnr)
      -- Jump forwards/backwards with '{' and '}'
      vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
      vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
    end,
})
-- You probably also want to set a keymap to toggle aerial
-- vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")

-------------------------------------------------------------------------------

require('treesj').setup({
  ---@type boolean Use default keymaps (<space>m - toggle, <space>j - join, <space>s - split)
  use_default_keymaps = true,
  ---@type boolean Node with syntax error will not be formatted
  check_syntax_error = true,
  ---If line after join will be longer than max value,
  ---@type number If line after join will be longer than max value, node will not be formatted
  max_join_length = 120,
  ---Cursor behavior:
  ---hold - cursor follows the node/place on which it was called
  ---start - cursor jumps to the first symbol of the node being formatted
  ---end - cursor jumps to the last symbol of the node being formatted
  ---@type 'hold'|'start'|'end'
  cursor_behavior = 'hold',
  ---@type boolean Notify about possible problems or not
  notify = true,
  ---@type boolean Use `dot` for repeat action
  dot_repeat = true,
  ---@type nil|function Callback for treesj error handler. func (err_text, level, ...other_text)
  on_error = nil,
  ---@type table Presets for languages
  -- langs = {}, -- See the default presets in lua/treesj/langs
})

-------------------------------------------------------------------------------

require('neo-tree').setup({})

-------------------------------------------------------------------------------

require("diffview").setup({})

-------------------------------------------------------------------------------

require('gitsigns').setup{}

-------------------------------------------------------------------------------

require('neogit').setup {}

-------------------------------------------------------------------------------

require("persistence").setup({
    dir = vim.fn.stdpath("state") .. "/sessions/",
    options = vim.split(vim.o.sessionoptions, ","),
    need = 1,
    branch = true,
})
vim.api.nvim_create_autocmd("VimEnter", {
    group = vim.api.nvim_create_augroup("persistence", { clear = true }),
    callback = function()
        if vim.fn.argc() == 0 and not vim.g.started_with_stdin then
            require("persistence").load()
            vim.schedule(function()
                for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
                    local name = vim.api.nvim_buf_get_name(bufnr)
                    local buftype = vim.api.nvim_buf_get_option(bufnr, "buftype")
                    local loaded = vim.api.nvim_buf_is_loaded(bufnr)
                    local listed = vim.api.nvim_buf_get_option(bufnr, "buflisted")
                    if name == "" and buftype == "" and listed and loaded then
                        vim.api.nvim_buf_delete(bufnr, { force = true })
                    end
                end
            end)
        end
    end,
    nested = true,
})
vim.api.nvim_create_autocmd("VimLeavePre", {
    group = vim.api.nvim_create_augroup("persistence_save", { clear = true }),
    callback = function()
        require("persistence").save()
    end,
})

-------------------------------------------------------------------------------

require('bqf').setup({
    auto_enable = true,
    auto_resize_height = true, -- highly recommended enable
    preview = {
        win_height = 12,
        win_vheight = 12,
        delay_syntax = 80,
        border = {'┏', '━', '┓', '┃', '┛', '━', '┗', '┃'},
        show_title = false,
        should_preview_cb = function(bufnr, qwinid)
            local ret = true
            local bufname = vim.api.nvim_buf_get_name(bufnr)
            local fsize = vim.fn.getfsize(bufname)
            if fsize > 100 * 1024 then
                -- skip file size greater than 100k
                ret = false
            elseif bufname:match('^fugitive://') then
                -- skip fugitive buffer
                ret = false
            end
            return ret
        end
    },
    -- make `drop` and `tab drop` to become preferred
    func_map = {
        drop = 'o',
        openc = 'O',
        split = '<C-s>',
        tabdrop = '<C-t>',
        -- set to empty string to disable
        tabc = '',
        ptogglemode = 'z,',
    },
    filter = {
        fzf = {
            action_for = {['ctrl-s'] = 'split', ['ctrl-t'] = 'tab drop'},
            extra_opts = {'--bind', 'ctrl-o:toggle-all', '--prompt', '> '}
        }
    }
})

-------------------------------------------------------------------------------

require("lsp-file-operations").setup {
  -- used to see debug logs in file `vim.fn.stdpath("cache") .. lsp-file-operations.log`
  debug = false,
  -- select which file operations to enable
  operations = {
    willRenameFiles = true,
    didRenameFiles = true,
    willCreateFiles = true,
    didCreateFiles = true,
    willDeleteFiles = true,
    didDeleteFiles = true,
  },
  -- how long to wait (in milliseconds) for file rename information before cancelling
  timeout_ms = 10000,
}

require("telescope").setup {
    extensions = {
        fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                             -- the default case_mode is "smart_case"
        },
        ["ui-select"] = {
            require("telescope.themes").get_dropdown {
                -- even more opts
            }

            -- pseudo code / specification for writing custom displays, like the one
            -- for "codeactions"
            -- specific_opts = {
            --   [kind] = {
            --     make_indexed = function(items) -> indexed_items, width,
            --     make_displayer = function(widths) -> displayer
            --     make_display = function(displayer) -> function(e)
            --     make_ordinal = function(e) -> string
            --   },
            --   -- for example to disable the custom builtin "codeactions" display
            --      do the following
            --   codeactions = false,
            -- }
        },
    },
}
-- To get ui-select loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require("telescope").load_extension('fzf', "file_browser", "ui-select", 'dap')

local builtin = require("telescope.builtin")
local file_browser = require("telescope").extensions.file_browser

vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope: Buffers" })
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope: Find Files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope: Live Grep" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope: Help Tags" })
vim.keymap.set("n", "<leader>fe", file_browser.file_browser, { desc = "Telescope: File Browser" })

-- Set up nvim-cmp.
local cmp = require'cmp'

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ['<Tab>'] = function(fallback) -- https://github.com/hrsh7th/nvim-cmp/issues/231
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end,
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' }, -- For vsnip users.
        -- { name = 'luasnip' }, -- For luasnip users.
    }, {
        { name = 'buffer' },
    }, {
        { name = 'treesitter' }
    }),
    -- view = {
    --     -- entries = "custom" -- can be "custom", "wildmenu" or "native"
    --     entries = {name = 'custom', selection_order = 'near_cursor' }
    -- },
})

-- Set configuration for specific filetype.
require("cmp_git").setup()
cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
        { name = 'git' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
    }, {
        { name = 'buffer' },
    })
})
-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    },
    -- view = {
    --     entries = {name = 'wildmenu', separator = '|' }
    -- },
})
-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    }),
    matching = { disallow_symbol_nonprefix_matching = false }
})

require("nvim-dap-virtual-text").setup {
    enabled = true,                         -- enable this plugin (the default)
    enabled_commands = true,                -- create commands DapVirtualTextEnable, DapVirtualTextDisable, DapVirtualTextToggle, (DapVirtualTextForceRefresh for refreshing when debug adapter did not notify its termination)
    highlight_changed_variables = true,     -- highlight changed values with NvimDapVirtualTextChanged, else always NvimDapVirtualText
    highlight_new_as_changed = true,        -- highlight new variables in the same way as changed variables (if highlight_changed_variables)
    show_stop_reason = true,                -- show stop reason when stopped for exceptions
    commented = false,                      -- prefix virtual text with comment string
    only_first_definition = false,           -- only show virtual text at first definition (if there are multiple)
    all_references = false,                 -- show virtual text on all all references of the variable (not only definitions)
    clear_on_continue = false,              -- clear virtual text on "continue" (might cause flickering when stepping)
    --- A callback that determines how a variable is displayed or whether it should be omitted
    --- @param variable Variable https://microsoft.github.io/debug-adapter-protocol/specification#Types_Variable
    --- @param buf number
    --- @param stackframe dap.StackFrame https://microsoft.github.io/debug-adapter-protocol/specification#Types_StackFrame
    --- @param node userdata tree-sitter node identified as variable definition of reference (see `:h tsnode`)
    --- @param options nvim_dap_virtual_text_options Current options for nvim-dap-virtual-text
    --- @return string|nil A text how the virtual text should be displayed or nil, if this variable shouldn't be displayed
    display_callback = function(variable, buf, stackframe, node, options)
        -- by default, strip out new line characters
        if options.virt_text_pos == 'inline' then
            return ' = ' .. variable.value:gsub("%s+", " ")
        else
            return variable.name .. ' = ' .. variable.value:gsub("%s+", " ")
        end
    end,
    -- position of virtual text, see `:h nvim_buf_set_extmark()`, default tries to inline the virtual text. Use 'eol' to set to end of line
    virt_text_pos = vim.fn.has 'nvim-0.10' == 1 and 'inline' or 'eol',
    -- experimental features:
    all_frames = true,                      -- show virtual text for all stack frames not only current. Only works for debugpy on my machine.
    virt_lines = false,                     -- show virtual lines instead of virtual text (will flicker!)
    virt_text_win_col = 80                  -- position the virtual text at a fixed window column (starting from the first text column) ,
                                            -- e.g. 80 to position at column 80, see `:h nvim_buf_set_extmark()`
}

-------------------------------------------------------------------------------

local dap = require("dap")
vim.keymap.set('n', '<F5>'      , dap.continue         , { silent = true })
vim.keymap.set('n', '<F10>'     , dap.step_over        , { silent = true })
vim.keymap.set('n', '<F11>'     , dap.step_into        , { silent = true })
vim.keymap.set('n', '<F12>'     , dap.step_out         , { silent = true })
vim.keymap.set('n', '<F9>'      , dap.toggle_breakpoint, { silent = true })
vim.keymap.set('n', '<Leader>b' , dap.toggle_breakpoint, { silent = true })
vim.keymap.set('n', '<Leader>B' , dap.set_breakpoint   , { silent = true })
vim.keymap.set('n', '<Leader>dl', dap.run_last         , { silent = true })
vim.keymap.set('n', '<Leader>dr', dap.repl.toggle      , { silent = true })
-- vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
--     local widgets = require('dap.ui.widgets')
--     widgets.hover()
-- end)
-- vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
--     local widgets = require('dap.ui.widgets')
--     widgets.preview()
-- end)
-- vim.keymap.set('n', '<Leader>df', function()
--     local widgets = require('dap.ui.widgets')
--     widgets.centered_float(widgets.frames)
-- end)
-- vim.keymap.set('n', '<Leader>ds', function()
--     local widgets = require('dap.ui.widgets')
--     widgets.centered_float(widgets.scopes)
-- end)

-------------------------------------------------------------------------------

local dapui = require("dapui")
dapui.setup()
-- dap.listeners.before.attach.dapui_config = function()
--     dapui.open()
-- end
-- dap.listeners.before.launch.dapui_config = function()
--     dapui.open()
-- end
-- dap.listeners.before.event_terminated.dapui_config = function()
--     dapui.close()
-- end
-- dap.listeners.before.event_exited.dapui_config = function()
--     dapui.close()
-- end
vim.api.nvim_create_user_command("DapUiToggle", dapui.toggle, {})
-- vim.keymap.set('n', '<leader>dc', dapui.close        , { silent = true })
-- vim.keymap.set('n', '<leader>do', dapui.open         , { silent = true })
vim.keymap.set('n', '<leader>dt', dapui.toggle       , { silent = true })
vim.keymap.set('n', '<leader>df', dapui.float_element, { silent = true })
vim.keymap.set('v', '<M-k>'     , dapui.eval         , { noremap = true, silent = true, desc = "DAP UI eval selection" })

-------------------------------------------------------------------------------

local dapview = require("dap-view").setup({
    winbar = {
        controls = {
            enabled = true,
        },
    },
})

-------------------------------------------------------------------------------

require("mason").setup()

-------------------------------------------------------------------------------

require("mason-nvim-dap").setup({
    ensure_installed = { "cppdbg", "python" },
})

-------------------------------------------------------------------------------

-- require("dap-python").setup("python3")

-------------------------------------------------------------------------------

local mason_path = vim.fn.stdpath("data") .. vim.fn.expand("/mason/packages/debugpy/venv/")
local python_bin = vim.loop.os_uname().sysname == "Windows_NT"
  and mason_path .. vim.fn.expand("Scripts/python.exe")
  or  mason_path .. vim.fn.expand("bin/python")
dap.adapters.python = {
    type = "executable",
    command = python_bin,
    args = { "-m", "debugpy.adapter" },
}
dap.configurations.python = {
    {
        type = "python",
        request = "launch",
        name = "Launch current file",
        program = "${file}",
        pythonPath = function()
            local venv = os.getenv("VIRTUAL_ENV")
            if venv then
                return venv .. "/bin/python"
            end
            return vim.fn.exepath("python3")
        end,
    },
}

-------------------------------------------------------------------------------

dap.adapters.cppdbg = {
    id = "cppdbg",
    type = "executable",
    command = vim.fn.stdpath("data") .. vim.fn.expand("/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7"),
    options = {
        detached = false,
        cwd = vim.fn.getcwd(),
        -- env = { MY_VAR = "value" },
    },
}
local is_windows = vim.loop.os_uname().sysname == "Windows_NT"
local has_gdb = vim.fn.executable("gdb") == 1
local has_lldb = vim.fn.executable("lldb") == 1
local has_msvc = vim.fn.executable("cl") == 1 or vim.fn.executable("devenv") == 1 -- rough MSVC check
local MIMode = has_gdb and "gdb" or (has_lldb and "lldb" or (is_windows and "dbg" or nil))
local miDebuggerPath = (has_gdb and "gdb") or (has_lldb and "lldb") or (is_windows and has_msvc and "") or nil
if not MIMode then
    vim.notify("[nvim-dap] No supported debugger found (gdb, lldb, msvc)", vim.log.levels.WARN)
end
dap.configurations.cpp = {
    {
        name = "Launch file",
        type = "cppdbg",
        request = "launch",
        program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopAtEntry = true,
        args = {},                          -- CLI args to binary
        environment = {},                   -- Optional env vars
        console = "internalConsole",        -- For Windows (esp. MSVC)
        runInTerminal = false,              -- true if you want an external shell
        externalConsole = is_windows,       -- MSVC/gdb on Windows needs this more
        MIMode = MIMode,
        miDebuggerPath = miDebuggerPath,
        setupCommands = {
            {
                text = "-enable-pretty-printing",
                description = "Enable pretty printing for GDB",
                ignoreFailures = true,
            },
        },
    },
}
dap.configurations.c = dap.configurations.cpp

-------------------------------------------------------------------------------

-- Enable TreeSitter in diff mode
vim.api.nvim_create_autocmd("BufWinEnter", {
  callback = function(args)
    if vim.wo.diff then
      pcall(function()
        vim.treesitter.start(args.buf)
        vim.wo.foldmethod = "expr"
        vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end)
    end
  end,
})
-- vim.api.nvim_exec([[
--   augroup TreeSitterInDiff
--     autocmd!
--     autocmd BufWinEnter,BufRead,BufNewFile *.diff set filetype=diff
--   augroup END
-- ]], false)

-- Format current JS/HTML file with Prettier
vim.api.nvim_create_user_command('Prettier', function()
  vim.cmd('silent %!prettier --stdin-filepath ' .. vim.fn.expand('%'))
end, {})
vim.keymap.set("n", "<leader>pf", function()
  local row, col = unpack(vim.api.nvim_win_get_cursor(0))
  vim.cmd('%!Prettier --stdin-filepath ' .. vim.fn.expand('%'))
  pcall(vim.api.nvim_win_set_cursor, 0, { row, col })
end, { desc = "Format with Prettier and keep cursor" })

-- require('cmake-tools').setup {
--   cmake_command = 'cmake',
--   cmake_build_directory = 'build',
--   cmake_build_directory_prefix = 'build/', -- when cmake_build_directory is ""
--   cmake_generate_options = { '-DCMAKE_EXPORT_COMPILE_COMMANDS=1' },
--   cmake_build_options = {},
--   cmake_console_size = 10, -- cmake output window height
--   cmake_show_console = 'always', -- "always", "only_on_error"
--   cmake_dap_configuration = { name = 'cpp', type = 'lldb', request = 'launch' }, -- dap configuration, optional
--   cmake_variants_message = {
--     short = { show = true }, -- whether to show short message
--     long = { show = true, max_length = 40 }, -- whether to show long message
--   },
-- }
--
-- require('typescript-tools').setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   settings = {
--     tsserver_path = "~/.nvm/versions/node/v20.12.2/lib/node_modules/typescript/lib/tsserver.js",
--     -- Customize these settings as needed:
--     separate_diagnostic_server = true,
--     publish_diagnostic_on = "insert_leave",
--     expose_as_code_action = { "fix_all", "add_missing_imports", "remove_unused" },
--     tsserver_max_memory = 4096,
--     complete_function_calls = true,
--   }
-- }
--
-- require('ts-error-translator').setup()
-- require('template-string').setup({
--   remove_template_string = true,
--   restore_quotes = true,
-- })


-------------------------------------------------------------------------------
EOF
"------------------------------------------------------------------------------
