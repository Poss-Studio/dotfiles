require('core/basic')
require('core/keybind')
require('plugins/module')
require('vim._core.ui2').enable({
    enable = true
})
require('core/lsp')
vim.cmd.colorscheme("kanagawa")
vim.api.nvim_set_option_value("winblend", 30, { scope = "global" })
