vim.cmd('set iskeyword+=-') -- treat dash separated words as a word text object"
vim.cmd('set shortmess+=c') -- Don't pass messages to |ins-completion-menu|.
vim.cmd('set inccommand=split') -- Make substitution work in realtime
vim.o.hidden = O.hidden_files -- Required to keep multiple buffers open multiple buffers
vim.o.title = true
TERMINAL = vim.fn.expand('$TERMINAL')
vim.cmd('let &titleold="'..TERMINAL..'"')
vim.o.titlestring="%<%F%=%l/%L - nvim"
vim.wo.wrap = true --O.wrap_lines -- Display long lines as just one line
vim.cmd('set whichwrap+=<,>,[,],h,l') -- move to next line with theses keys
vim.cmd('syntax on') -- syntax highlighting
vim.o.pumheight = 10 -- Makes popup menu smaller
vim.o.fileencoding = "utf-8" -- The encoding written to file
vim.o.cmdheight = 2 -- More space for displaying messages
vim.cmd('set colorcolumn=99999') -- fix indentline for now
vim.o.mouse = "a" -- Enable your mouse
vim.o.splitbelow = true -- Horizontal splits will automatically be below
vim.o.termguicolors = true -- set term gui colors most terminals support this
vim.o.splitright = true -- Vertical splits will automatically be to the right
vim.go.t_Co = "256" -- Support 256 colors
vim.o.conceallevel = 0 -- So that I can see `` in markdown files
vim.cmd('set ts=4') -- Insert 2 spaces for a tab
vim.cmd('set sw=4') -- Change the number of space characters inserted for indentation
vim.cmd('set expandtab') -- Converts tabs to spaces
vim.bo.smartindent = true -- Makes indenting smart
vim.wo.number = O.number -- set numbered lines
vim.wo.relativenumber = O.relative_number -- set relative number
vim.wo.cursorline = true -- Enable highlighting of the current line
vim.o.showtabline = 2 -- Always show tabs
vim.o.showmode = false -- We don't need to see things like -- INSERT -- anymore
vim.o.backup = false -- This is recommended by coc
vim.o.writebackup = false -- This is recommended by coc
vim.wo.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
vim.o.updatetime = 300 -- Faster completion
vim.o.timeoutlen = O.timeoutlen -- By default timeoutlen is 1000 ms
vim.o.clipboard = "unnamedplus" -- Copy paste between vim and everything else
vim.g.nvim_tree_disable_netrw = O.nvim_tree_disable_netrw -- enable netrw for remote gx gf support (must be set before plugin's packadd)
vim.g.loaded_netrwPlugin = 1 -- needed for netrw gx command to open remote links in browser
vim.cmd('filetype plugin on') -- filetype detection
-- vim.o.guifont = "JetBrainsMono\\ Nerd\\ Font\\ Mono:h18"
-- vim.o.guifont = "Hack\\ Nerd\\ Font\\ Mono"
-- vim.o.guifont = "SauceCodePro Nerd Font:h17"
vim.o.guifont = "FiraCode Nerd Font:h17"

-- vim.o.guifont = "JetBrains\\ Mono\\ Regular\\ Nerd\\ Font\\ Complete"




-- NOTE: CUSTOM
vim.wo.cursorcolumn = true -- Enable highlighting of the current line
vim.cmd('set scrolloff=10')
vim.cmd('let g:loaded_netrw = 1')
vim.cmd('let g:loaded_netrwPlugin = 1')

-- vim.o.guifont = "JetBrains\\ Mono\\ Regular\\ Nerd\\ Font\\ Complete"
vim.cmd('set tw=120')
vim.cmd('set list')
vim.cmd('set listchars=eol:↵,nbsp:_,tab:>-,trail:~,extends:>,precedes:<')
vim.cmd('set clipboard+=unnamedplus')
vim.cmd([[ let g:clipboard = {    'name': 'win32yank-wsl',    'copy': {       '+': 'win32yank.exe -i --crlf',       '*': 'win32yank.exe -i --crlf',     },    'paste': {       '+': 'win32yank.exe -o --lf',       '*': 'win32yank.exe -o --lf',    },    'cache_enabled': 0,  } ]])
vim.cmd('set showmatch')
vim.cmd('set autoread')
vim.cmd('set spelllang=en_us')
vim.cmd('set guicursor=i:ver1')
vim.cmd('set guicursor+=a:blinkon1')
-- vim.cmd("set spell")
--  trigger `autoread` when files changes on disk
-- notification after file change
vim.cmd([[
      autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
      autocmd FileChangedShellPost * echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
]])
