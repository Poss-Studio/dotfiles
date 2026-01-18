vim.o.shiftwidth = 4
vim.opt.number = true
vim.opt.tabstop = 4
vim.g.coc_global_extensions = {
  'coc-rust-analyzer',
  'coc-clangd',
  'coc-json',
  'coc-sumneko-lua',
  'coc-marketplace',
  'coc-pyright',
  'coc-tsserver',
  'coc-gdscript',
}
if vim.fn.has('termguicolors') == 1 then
  vim.opt.termguicolors = true
end
