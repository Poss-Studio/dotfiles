--设置开启行号
vim.opt.number = true
--设置光标所在行高亮
vim.opt.cursorline = true
--设置缩进
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 0
vim.opt.autoread = true
vim.g.coc_global_extensions = {
  'coc-rust-analyzer',
  'coc-clangd',
  'coc-json',
  'coc-marketplace',
  'coc-pyright',
  'coc-tsserver',
}
