require("git-worktree").setup({
    update_on_change = true, -- default: true,
    update_on_change_command = "e .", -- default: "e .",
    clearjumps_on_change = true, -- default: true,
    autopush = false, -- default: false,
})

require("telescope").load_extension("git_worktree")

-- NOTE: worktree shenanigans
-- local Worktree = require('git-worktree')
-- local Job = require('plenary.job')
-- 
-- local function is_nrdp()
--     return not not (string.find(vim.loop.cwd(), vim.env.NRDP, 1, true))
-- end
-- 
-- Worktree.on_tree_change(function(op, path, upstream)
--     if op == "create" and is_nrdp() then
--         Job:new({
--             "git", "submodule", "update"
--         }):start()
--     end
-- end)
