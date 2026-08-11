local opts = { noremap = true, silent = true }
vim.keymap.set('i', '<c-space>', 'coc#refresh()', { expr = true, silent = true })
vim.keymap.set('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', { expr = true, silent = true })
vim.keymap.set('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"', { expr = true, silent = true })
vim.keymap.set('i', '<CR>', 'pumvisible() ? coc#_select_confirm() : "\\<CR>"', { expr = true, silent = true })
vim.keymap.set('n', 'gd', '<Plug>(coc-definition)', opts)
vim.keymap.set('n','<C-t>',':!bun run index.js<CR>',opts)
vim.keymap.set('n','<C-g>',":!cmake -B build build;cmake --build build;./build/main<CR>",opts);
vim.keymap.set('n', '<C-r>', ':!cargo run<CR>', opts)
vim.keymap.set('n', '<C-p>', ':!uv run main.py<CR>', opts)
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', opts)
vim.keymap.set('n', '<C-m>', ':NvimTreeClose<CR>', opts)
vim.keymap.set('n', '<S-j>', ':BufferLineCyclePrev<CR>', opts)
vim.keymap.set('n', '<S-k>', ':BufferLineCycleNext<CR>', opts)
vim.keymap.set('n', '<C-s>',':BufferLinePickClose<CR>',opts)
vim.keymap.set('n', '<C-h>', ':!bun run index.js<CR>',opts)

