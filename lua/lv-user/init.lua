-- TOKYONIGHT
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = 1
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }


-- LASTPLACE
require'nvim-lastplace'.setup {
  lastplace_ignore_buftype  = {"quickfix","nofile","help"},
  lastplace_ignore_filetype = {"gitcommit","gitrebase","svn","hgcommit"},
  lastplace_open_folds      = true
}
