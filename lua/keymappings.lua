vim.api.nvim_set_keymap('n', '-', ':RnvimrToggle<CR>', {noremap = true, silent = true})

-- better window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {silent = true})

-- TODO fix this
-- Terminal window navigation
vim.cmd([[
  tnoremap <C-h> <C-\><C-N><C-w>h
  tnoremap <C-j> <C-\><C-N><C-w>j
  tnoremap <C-k> <C-\><C-N><C-w>k
  tnoremap <C-l> <C-\><C-N><C-w>l
  inoremap <C-h> <C-\><C-N><C-w>h
  inoremap <C-j> <C-\><C-N><C-w>j
  inoremap <C-k> <C-\><C-N><C-w>k
  inoremap <C-l> <C-\><C-N><C-w>l
  tnoremap <Esc> <C-\><C-n>
]])

-- TODO fix this
-- resize with arrows
vim.api.nvim_set_keymap('n', '<C-Up>', ':resize -2<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<C-Down>', ':resize +2<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize -2<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize +2<CR>', {silent = true})

-- better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

-- I hate escape
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', {noremap = true, silent = true})

-- Tab switch buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', {noremap = true, silent = true})

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

-- Better nav for omnicomplete
vim.cmd('inoremap <expr> <c-j> (\"\\<C-n>\")')
vim.cmd('inoremap <expr> <c-k> (\"\\<C-p>\")')

-- fix to get netrw's gx command to work correctly
vim.api.nvim_set_keymap('n', 'gx', ":call netrw#BrowseX(expand((exists('g:netrw_gx')? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())<cr>", {noremap = true, silent = true})

-- vim.api.nvim_set_keymap('v', 'p', '"0p', {silent = true})
-- vim.api.nvim_set_keymap('v', 'P', '"0P', {silent = true})

-- vim.cmd('inoremap <expr> <TAB> (\"\\<C-n>\")')
-- vim.cmd('inoremap <expr> <S-TAB> (\"\\<C-p>\")')

-- vim.api.nvim_set_keymap('i', '<C-TAB>', 'compe#complete()', {noremap = true, silent = true, expr = true})

-- vim.cmd([[
-- map p <Plug>(miniyank-autoput)
-- map P <Plug>(miniyank-autoPut)
-- map <leader>n <Plug>(miniyank-cycle)
-- map <leader>N <Plug>(miniyank-cycleback)
-- ]])

-- Toggle the QuickFix window
vim.api.nvim_set_keymap('', '<C-q>', ':call QuickFixToggle()<CR>', {noremap = true, silent = true})



-- NOTE: CUSTOM
-- rename with f2
vim.api.nvim_set_keymap('n', '<f2>', '<cmd>lspsaga rename<cr>', { noremap = true, silent = true })

-- Buffer navigation
vim.api.nvim_set_keymap('n', '<A-1>', ':lua require"bufferline".go_to_buffer(1)<CR>', {noremap= true, silent = true})
vim.api.nvim_set_keymap('n', '<A-2>', ':lua require"bufferline".go_to_buffer(2)<CR>', {noremap= true, silent = true})
vim.api.nvim_set_keymap('n', '<A-3>', ':lua require"bufferline".go_to_buffer(3)<CR>', {noremap= true, silent = true})
vim.api.nvim_set_keymap('n', '<A-4>', ':lua require"bufferline".go_to_buffer(4)<CR>', {noremap= true, silent = true})
vim.api.nvim_set_keymap('n', '<A-5>', ':lua require"bufferline".go_to_buffer(5)<CR>', {noremap= true, silent = true})
vim.api.nvim_set_keymap('n', '<A-6>', ':lua require"bufferline".go_to_buffer(6)<CR>', {noremap= true, silent = true})

-- quickfix navigation
-- FIX: doesnt works
-- vim.api.nvim_set_keymap('', '<C-q>', ':call QuickFixToggle()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', ':cnext<CR>', {noremap= true})
vim.api.nvim_set_keymap('n', '<C-k>', ':cprev<CR>', {noremap= true})
vim.api.nvim_set_keymap('n', '<A-e>', ':copen<CR>', {noremap= true, silent = true})
vim.api.nvim_set_keymap('n', '<C-e>', ':cclose<CR>', {noremap= true, silent = true})

-- Alternate way to save?
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', {noremap = true})

-- swap between 0 and ^ with 0
vim.api.nvim_set_keymap('n', '0', "getline('.')[0 : col('.') - 2] =~# '^\\s\\+$' ? '0' : '^'", {silent = true, noremap = true, expr = true})

-- FIX: doesnt work
-- commentary
vim.api.nvim_set_keymap('n', 'gcc', ":lua require('ts_context_commentstring.internal').update_commentstring()<cr>", {silent = true, noremap = true, expr = true})
-- vim.api.nvim_set_keymap('n', '<A-r>', ':bufdo :e!<cr>', {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('n', '<A-r>', ':checktime<cr>', {noremap = true, silent = true})

