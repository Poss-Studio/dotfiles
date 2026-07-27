vim.lsp.config('clangd',{
    cmd = {'clangd','--limit-results=10'},
    filetypes = {'c','h'},
})
vim.lsp.config('rust_analyzer',{
    cmd = {'rust-analyzer'},
    root_markers = {'Cargo.toml'},
    filetypes = {'rust'},
})
vim.lsp.config('lua_ls', {
  cmd = { 'lua-language-server' },
  root_markers = { '.luarc.json', '.luarc.jsonc', '.git' },
  filetypes = { 'lua' },
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT' },
      diagnostics = { globals = { 'vim' } },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      telemetry = { enable = false },
    },
  },
})
vim.lsp.config('cmake-language-server',{
    cmd = {'cmake-language-server'},
    root_markers = {'CMakeLists.txt'},
    filetypes = {'cmake'}
})
vim.lsp.enable({'clangd','rust_analyzer','lua_ls',"cmake-language-server"})
vim.keymap.set('n','gl',vim.diagnostic.open_float)
vim.o.autocomplete = true
vim.opt.complete:append('o')
vim.opt.completeopt = {'menu','menuone','noselect'}
    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('my.lsp', {}),
      callback = function(ev)
        local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
        if client:supports_method('textDocument/completion') then
          vim.lsp.completion.enable(true, client.id, ev.buf, {autotrigger = true})
        end
      end,
})
