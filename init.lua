require "default-config"
require "keymappings"
require "lv-config-user"
require "settings"
require "plugins"
require "lv-utils"
require "lv-galaxyline"
require "lv-treesitter"
require "lv-which-key"
require "lv-neoformat"
require "lsp"
if O.lang.emmet.active then
  require "lsp.emmet-ls"
end
if O.lang.tailwindcss.active then
  require "lsp.tailwindcss-ls"
end
