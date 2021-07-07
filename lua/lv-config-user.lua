O.wrap_lines = true
O.colorscheme = "tokyonight"


-- NOTE: PLUGINS load
-- After changing plugin config it is recommended to run :PackerCompile
O.plugin.dashboard.active = true
O.plugin.colorizer.active = true
O.plugin.zen.active = true
O.plugin.ts_playground.active = true
O.plugin.ts_context_commentstring.active = true
O.plugin.ts_hintobjects.active = true
O.plugin.ts_autotag.active = true
O.plugin.ts_rainbow.active = true
O.plugin.ts_textobjects.active = true
O.plugin.ts_textsubjects.active = true
O.plugin.telescope_fzy.active = false
O.plugin.telescope_project.active = false
O.plugin.indent_line.active = false
O.plugin.symbol_outline.active = true
O.plugin.debug.active = false
O.plugin.dap_install.active = false
O.plugin.lush.active = false
O.plugin.diffview.active = true
O.plugin.floatterm.active = false
O.plugin.trouble.active = true
O.plugin.sanegx.active = false

-- NOTE: Plugins install

O.custom_plugins = {{
    "folke/tokyonight.nvim",                   -- theme
    "ethanholz/nvim-lastplace",                -- save file cursor position
    'marcushwz/nvim-workbench',                -- open md file to manage to-dos list
}}

-- NOTE: Commands

vim.wo.cursorcolumn = true -- Enable highlighting of the current line
vim.cmd('set scrolloff=10')
vim.cmd('let g:loaded_netrw = 1')
vim.cmd('let g:loaded_netrwPlugin = 1')

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
vim.cmd([[
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
autocmd FileChangedShellPost * echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
]])


-- NOTE: MISC commands
-- Workbench plugin mappings for whichkey
vim.cmd([[command! WorkbenchAddCheckbox :call markdown#checkbox#toggle(' ')]])
vim.cmd([[command! WorkbenchBranchToggle lua require'workbench'.toggle_branch_workbench()<CR>]])
vim.cmd([[command! WorkbenchCheckboxToggle :call markdown#checkbox#toggle('x')]])
vim.cmd([[command! WorkbenchToggle lua require'workbench'.toggle_project_workbench()<CR>]])
vim.cmd([[command! WorkbenchProjectToggle lua require'workbench'.toggle_project_workbench()<CR>]])


vim.cmd([[function! QuickFixToggle()
if empty(filter(getwininfo(), 'v:val.quickfix'))
copen
else
cclose
endif
endfunction]])

-- NOTE: HOTKEYS
vim.api.nvim_set_keymap('n', '<silent><buffer><C-s>', ':write<CR>', { noremap = true})
vim.api.nvim_set_keymap('i', '<c-s>', '<C-o>:w<CR>', { noremap = true})

-- Record Macros with Q. Use q to quit rapidly.
vim.api.nvim_set_keymap('n', 'Q', 'q`]', { noremap = true})
--vim.api.nvim_set_keymap('n', 'q', 'Q`]', { noremap = true})
vim.cmd('nnoremap Q <Nop>')
vim.cmd('nnoremap Q  q')
vim.cmd('nnoremap q <Nop>')
vim.cmd('nnoremap q <C-w>q')
