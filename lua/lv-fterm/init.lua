require'FTerm'.setup({
    dimensions  = {
        height = 0.8,
        width = 0.8,
        x = 0.5,
        y = 0.5
    },
    border = 'single' --single or 'double'
})

local term = require("FTerm.terminal")
-- Can set custom terminal ui
local lazygit = term:new():setup({
    cmd = "lazygit",
    dimensions = {
        height = 0.9,
        width = 0.9
    }
})


local lazygit_bare = term:new():setup({
    cmd = "lazygit -w $(git rev-parse --show-toplevel) -d $(git rev-parse --git-dir)",
    dimensions = {
        height = 0.9,
        width = 0.9
    }
})

function _G.__fterm_lazygit()
    lazygit:toggle()
end

function _G.__fterm_lazygitbare()
    lazygit_bare:toggle()
end
