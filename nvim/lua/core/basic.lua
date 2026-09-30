--设置开启行号
vim.opt.number = true
--设置光标所在行高亮
vim.opt.cursorline = true
--设置缩进
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 0
vim.opt.autoread = true
vim.opt.termguicolors = true
vim.opt.clipboard = 'unnamedplus'
vim.diagnostic.config({ virtual_text = true })
local function set_transparent()
    vim.cmd([[
    highlight Normal guibg=NONE ctermbg=NONE
    highlight NormalFloat guibg=NONE ctermbg=NONE
    highlight NormalNC guibg=NONE ctermbg=NONE
    highlight SignColumn guibg=NONE ctermbg=NONE
    highlight LineNr guibg=NONE ctermbg=NONE
    highlight CursorLine guibg=NONE ctermbg=NONE
    highlight EndOfBuffer guibg=NONE ctermbg=NONE
  ]])
end
set_transparent()
vim.api.nvim_create_autocmd("ColorScheme", {
    callback = set_transparent,
})
