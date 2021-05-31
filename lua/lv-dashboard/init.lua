-- vim.g.dashboard_custom_header = {
--     '███╗   ██╗██╗   ██╗ ██████╗ ██████╗ ██████╗ ███████╗',
--     '████╗  ██║██║   ██║██╔════╝██╔═══██╗██╔══██╗██╔════╝',
--     '██╔██╗ ██║██║   ██║██║     ██║   ██║██║  ██║█████╗',
--     '██║╚██╗██║╚██╗ ██╔╝██║     ██║   ██║██║  ██║██╔══╝',
--     '██║ ╚████║ ╚████╔╝ ╚██████╗╚██████╔╝██████╔╝███████╗',
--     '╚═╝  ╚═══╝  ╚═══╝   ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝'
-- }
-- vim.g.dashboard_custom_header = {
--
-- '      _..._                                                                           ',
-- '    .\'     `.   ██      ██    ██ ███    ██  █████  ██████  ██    ██ ██ ███    ███ ',
-- '   :         :  ██      ██    ██ ████   ██ ██   ██ ██   ██ ██    ██ ██ ████  ████ ',
-- '   :         :  ██      ██    ██ ██ ██  ██ ███████ ██████  ██    ██ ██ ██ ████ ██ ',
-- '   `.       .\'  ██      ██    ██ ██  ██ ██ ██   ██ ██   ██  ██  ██  ██ ██  ██  ██ ',
-- '     `-...-\'    ███████  ██████  ██   ████ ██   ██ ██   ██   ████   ██ ██      ██ ',
--
-- }

vim.g.dashboard_custom_header = O.dashboard.custom_header

vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_section = {
    u = {description = {'ﭯ  Recently Used Files'}, command = 'Telescope oldfiles'},
    v = {description = {'  Projects           '}, command = "lua require'telescope'.extensions.project.project{display_type = 'full'}"},
    w = {description = {'  Load Last Session  '}, command = 'SessionLoad'},
    x = {description = {'  Find File          '}, command = 'Telescope find_files'},
    y = {description = {'  Find Word          '}, command = 'Telescope live_grep'},
    z = {description = {'  Settings           '}, command = ':e '..CONFIG_PATH..'/lv-settings.lua'}
    -- e = {description = {'  Marks              '}, command = 'Telescope marks'}
}

-- file_browser = {description = {' File Browser'}, command = 'Telescope find_files'},
-- vim.g.dashboard_custom_shortcut = {
--     a = 'f',
--     find_word = 'SPC f a',
--     last_session = 'SPC s l',
--     new_file = 'SPC c n',
--     book_marks = 'SPC f b'
-- }
-- find_history = 'SPC f h',

-- vim.g.dashboard_session_directory = CACHE_PATH..'/session'
-- vlet g:dashboard_custom_shortcut_icon['last_session'] = ' '
-- let g:dashboard_custom_shortcut_icon['find_history'] = 'ﭯ '
-- let g:dashboard_custom_shortcut_icon['find_file'] = ' '
-- let g:dashboard_custom_shortcut_icon['new_file'] = ' '
-- let g:dashboard_custom_shortcut_icon['change_colorscheme'] = ' '
-- let g:dashboard_custom_shortcut_icon['find_word'] = ' '
-- let g:dashboard_custom_shortcut_icon['book_marks'] = ' 'im.g.dashboard_custom_footer = O.dashboard.footer
