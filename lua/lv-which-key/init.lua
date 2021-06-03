require("which-key").setup {
    plugins = {
        marks = true, -- shows a list of your marks on ' and `
        registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
        -- the presets plugin, adds help for a bunch of default keybindings in Neovim
        -- No actual key bindings are created
        presets = {
            operators = false, -- adds help for operators like d, y, ...
            motions = false, -- adds help for motions
            text_objects = false, -- help for text objects triggered after entering an operator
            windows = true, -- default bindings on <c-w>
            nav = true, -- misc bindings to work with windows
            z = true, -- bindings for folds, spelling and others prefixed with z
            g = true -- bindings for prefixed with g
        },
        spelling = {
            enabled = true,
            suggestions = 20,
        }
    },
    icons = {
        breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
        separator = "➜", -- symbol used between a key and it's label
        group = "+" -- symbol prepended to a group
    },
    window = {
        border = "single", -- none, single, double, shadow
        position = "bottom", -- bottom, top
        margin = {1, 0, 1, 0}, -- extra window margin [top, right, bottom, left]
        padding = {2, 2, 2, 2} -- extra window padding [top, right, bottom, left]
    },
    layout = {
        height = {min = 4, max = 25}, -- min and max height of the columns
        width = {min = 20, max = 50}, -- min and max width of the columns
        spacing = 3 -- spacing between columns
    },
    hidden = {"<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
    show_help = true -- show help message on the command line when the popup is visible
}

local opts = {
    mode = "n", -- NORMAL mode
    prefix = "<leader>",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = false -- use `nowait` when creating keymaps
}

-- Set leader
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '

-- no hl
-- vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', {noremap = true, silent = true})

-- explorer
-- vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- telescope
-- vim.api.nvim_set_keymap('n', '<Leader>f', ':Telescope find_files<CR>', {noremap = true, silent = true})

-- dashboard
vim.api.nvim_set_keymap('n', '<Leader>;', ':Dashboard<CR>', {noremap = true, silent = true})

-- Comments
vim.api.nvim_set_keymap("n", "<leader>/", ":CommentToggle<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "<leader>/", ":CommentToggle<CR>", {noremap = true, silent = true})

-- close buffer
-- vim.api.nvim_set_keymap("n", "<leader>c", ":BufferClose<CR>", {noremap = true, silent = true})

-- open projects
vim.api.nvim_set_keymap('n', '<leader>p', ":lua require'telescope'.extensions.project.project{display_type = 'full'}<CR>",
                        {noremap = true, silent = true})
-- TODO create entire treesitter section

local mappings = {
    ["/"] = "Comment",
    -- ["c"] = "Close Buffer",
    ["e"] = "Explorer",
    -- ["f"] = "Find File",
    -- ["h"] = "No Highlight",
    ["p"] = "Projects",
    ["h"] = "Hop to word",
    d = {
        name = "+Diagnostics",
        t = {"<cmd>TroubleToggle<cr>", "trouble"},
        w = {"<cmd>TroubleToggle lsp_workspace_diagnostics<cr>", "workspace"},
        d = {"<cmd>TroubleToggle lsp_document_diagnostics<cr>", "document"},
        q = {"<cmd>TroubleToggle quickfix<cr>", "quickfix"},
        l = {"<cmd>TroubleToggle loclist<cr>", "loclist"},
        r = {"<cmd>TroubleToggle lsp_references<cr>", "references"},
    },
    D = {
        name = "+Debug",
        b = {"<cmd>DebugToggleBreakpoint<cr>", "Toggle Breakpoint"},
        c = {"<cmd>DebugContinue<cr>", "Continue"},
        i = {"<cmd>DebugStepInto<cr>", "Step Into"},
        o = {"<cmd>DebugStepOver<cr>", "Step Over"},
        r = {"<cmd>DebugToggleRepl<cr>", "Toggle Repl"},
        s = {"<cmd>DebugStart<cr>", "Start"}
    },
    g = {
        name = "+Git",
        d = {"<cmd>DiffviewOpen<cr>", "Open DiffView"},
        D = {"<cmd>DiffviewClose<cr>", "Close DiffView"},
        n = {"<cmd>NextHunk<cr>", "Next Hunk"},
        p = {"<cmd>PrevHunk<cr>", "Prev Hunk"},
        k = {"<cmd>PreviewHunk<cr>", "Preview Hunk"},
        r = {"<cmd>ResetHunk<cr>", "Reset Hunk"},
        R = {"<cmd>ResetBuffer<cr>", "Reset Buffer"},
        S = {"<cmd>StageHunk<cr>", "Stage Hunk"},
        u = {"<cmd>UndoStageHunk<cr>", "Undo Stage Hunk"},
        s = {"<cmd>Telescope git_status<cr>", "Git Status"},
        b = {"<cmd>Telescope git_branches<cr>", "Git Branches"},
        c = {"<cmd>Telescope git_commits<cr>", "Git Commits"},
        C = {"<cmd>Telescope git_bcommits<cr>", "Checkout commit(for current file)"},
        f = {"<cmd>Telescope git_files<cr>", "Git Files"},
        w = {"<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<cr>", "Git Worktree"},
        W = {"<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>", "Git Worktree"},

    },
    l = {
        name = "+LSP",
        a = {"<cmd>Lspsaga code_action<cr>", "Code Action"},
        A = {"<cmd>Lspsaga range_code_action<cr>", "Selected Action"},
        d = {"<cmd>Telescope lsp_document_diagnostics<cr>", "Document Diagnostics"},
        D = {"<cmd>Telescope lsp_workspace_diagnostics<cr>", "Workspace Diagnostics"},
        f = {"<cmd>LspFormatting<cr>", "Format"},
        i = {"<cmd>LspInfo<cr>", "Info"},
        l = {"<cmd>Lspsaga lsp_finder<cr>", "LSP Finder"},
        L = {"<cmd>Lspsaga show_line_diagnostics<cr>", "Line Diagnostics"},
        p = {"<cmd>Lspsaga preview_definition<cr>", "Preview Definition"},
        q = {"<cmd>Telescope quickfix<cr>", "Quickfix"},
        r = {"<cmd>Lspsaga rename<cr>", "Rename"},
        t = {"<cmd>LspTypeDefinition<cr>", "Type Definition"},
        -- x = {"<cmd>cclose<cr>", "Close Quickfix"},
        s = {"<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols"},
        S = {"<cmd>Telescope lsp_workspace_symbols<cr>", "Workspace Symbols"}
    },
    s = {
        name = "+Search",
        c = {"<cmd>Telescope colorscheme<cr>", "Colorscheme"},
        d = {"<cmd>Telescope lsp_document_diagnostics<cr>", "Document Diagnostics"},
        D = {"<cmd>Telescope lsp_workspace_diagnostics<cr>", "Workspace Diagnostics"},
        b = {"<cmd>Telescope buffers<cr>", "Buffer List"},
        f = {"<cmd>Telescope find_files<cr>", "Find File"},
        -- h = {"<cmd>Telescope find_files<cr>", "File History"},
        m = {"<cmd>Telescope marks<cr>", "Marks"},
        M = {"<cmd>Telescope man_pages<cr>", "Man Pages"},
        q = {"<cmd>Telescope quickfix<cr>", "Quickfix"},
        r = {"<cmd>Telescope registers<cr>", "Registers"},
        t = {"<cmd>TodoTelescope<cr>", "Todos"},
        s = {"<cmd>SymbolsOutline<cr>", "Symbols"},
        j = {"<cmd>Telescope jumplist<cr>", "Jumplist"},
        W = {"viw:lua require('spectre').open_visual()<CR>", "Current word"},
        -- W = {"<cmd>Telescope live_grep<cr>", "Word"},
        w = {"<cmd>lua require('telescope.builtin').grep_string({search= vim.fn.input('   Grep For >  ')})<cr>", "Word"}
    },
    S = {name = "+Session", s = {"<cmd>SessionSave<cr>", "Save Session"}, l = {"<cmd>SessionLoad<cr>", "Load Session"}},

    -- extras
    z = {
        name = "+Zen",
        s = {"<cmd>TZBottom<cr>", "toggle status line"},
        t = {"<cmd>TZTop<cr>", "toggle tab bar"},
        z = {"<cmd>TZAtaraxis<cr>", "toggle zen"},
    },



    -- NOTE: CUSTOM
    b = {
        name = "+Buffer",
        -- x = {"<cmd>BufferClose<cr>", "Close"},
        -- X = {"<cmd>BufferCloseAllButCurrent<cr>", "Close All but Current"},
        p = {"<cmd>BufferLinePick<cr>", "Pick"},
        l = {"<cmd>Telescope buffers<cr>", "Buffer List"},
        o = {"<cmd>BufferLineSortByExtension<cr>", "Order by Language"},
        O = {"<cmd>BufferLineSortByDirectory<cr>", "Order By Directory"},
        k = {"<cmd>BufferLineMoveNext<cr>", "Move Left"},
        j = {"<cmd>BufferLineMovePrev<cr>", "Move Right"},
    },

    f = {
        name = "+File",
        h = {"<cmd>Telescope oldfiles<cr>", "Recent Files"},
        s = {"<cmd>Telescope find_files<cr>", "Search Files"},
        m = {"<cmd>MarkdownPreview<cr>", "MarkdownPreview Start"},
        M = {"<cmd>MarkdownPreviewStop<cr>", "MarkdownPreview Stop"},
    },

    -- TODO: Plugin trouble
    t = {
        name = "+Trouble",
        d = {"<cmd>Trouble lsp_workspace_diagnostics<cr>", "Document Diagnostics"},
        w = {"<cmd>Trouble lsp_document_diagnostics<cr>", "Workspace Diagnostics"},
        t = {"<cmd>Trouble <cr>", "Trouble"},
        l = {"<cmd>Trouble loclist<cr>", "Loclist"},
        q = {"<cmd>Trouble quickfix<cr>", "Quickfix"},
        r = {"<cmd>Trouble lsp_references<cr>", "LSP References"},
    },

    v = {
        name = "+Vimlociraptor",
        h = {"<cmd>:set hlsearch!<CR>", "No Highlight"},
        l = {"<cmd>:lua __fterm_lazygit()<CR>", "lazygit"},
        L = {"<cmd>:lua __fterm_lazygitbare()<CR>", "lazygit bare"},
        m = {"<cmd>:MarkdownPreview<CR>", "lazygit bare"},
        M = {"<cmd>:MarkdownPreviewStop<CR>", "lazygit bare"},
        c = {"<cmd>:Codi!!<CR>", "Codi scratchpad"},
        C = {"<cmd>:Codi!<CR>", "Codi Stop"},
        ["t"] = "Terminal",
        ["z"] = "Spell Toggle",
        s = {"<cmd>:luafile %<CR>", "Source % lua file"},
        P = {"<cmd>:PackerStatus<CR>", "PackerStatus"},
        p = {"<cmd>:PackerSync<CR>", "PackerSync"},

    },

    -- TODO: Plugin Workbench-vim
    w = {
        name = "+WorkBench",
        a = {"<cmd>WorkbenchAddCheckbox<cr>", "Add Checkbox"},
        b = {"<cmd>WorkbenchBranchToggle<cr>", "Branch Toggle"},
        t = {"<cmd>WorkbenchCheckboxToggle<cr>", "Checkbox Toggle"},
        l = {"<cmd>WorkbenchToggle<cr>", "Workbench Toggle"},
        p = {"<cmd>WorkbenchProjectToggle<cr>", "Project Toggle"},
    },


}

-- fterm
vim.api.nvim_set_keymap('n', '<leader>vt', '<CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<leader>vt', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>vz', '<C-O>:set spell!<cr>',{ noremap = true, silent = true })
-- hop to word
vim.api.nvim_set_keymap('n', '<Leader>h', ':HopPattern<CR>', {noremap = true, silent = true})

-- cheatsheet
vim.api.nvim_set_keymap('n', '<leader>?', ':Cheatsheet!<cr>', { noremap = true, silent = true })

local wk = require("which-key")
wk.register(mappings, opts)
