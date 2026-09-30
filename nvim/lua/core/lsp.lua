vim.lsp.config('clangd', {
    cmd = { 'clangd', '--limit-results=10' },
    filetypes = { 'c', 'h', 'cpp', 'hpp' },
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
vim.lsp.config('rust-analyzer', {
    cmd = { 'rust-analyzer' },
    filetypes = { 'rust' },
})
vim.lsp.config('haskell-language-server', {
    cmd = { 'haskell-language-server' },
    filetypes = { 'haskell' },
})
vim.lsp.config('tsserver', {
    cmd = { 'typescript-language-server', '--stdio' },
    filetypes = { 'typescript', 'typescriptreact', 'javascript', 'javascriptreact' },
    root_markers = { 'package.json', 'tsconfig.json', '.git' }
})
vim.lsp.config('pyright', {
    cmd = { "pyright-langserver", "--stdio" },
    filetypes = { 'python' }
})
vim.lsp.enable({ 'clangd', 'tsserver', 'lua_ls', "haskell-language-server", "pyright", "tsgo" })
vim.keymap.set('n', 'gl', vim.diagnostic.open_float)
vim.opt.complete:append('o')
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
vim.lsp.inlay_hint.enable(true)
vim.opt.scrolloff = 10
vim.o.autocomplete = true
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('my.lsp', {}),
    callback = function(ev)
        local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
        if client ~= nil and client:supports_method("textDocument/completion") then
            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
        end
        if not client:supports_method('textDocument/willSaveWaitUntil')
            and client:supports_method('textDocument/formatting') then
            vim.api.nvim_create_autocmd('BufWritePre', {
                group = vim.api.nvim_create_augroup('my.lsp', { clear = false }),
                buffer = ev.buf,
                callback = function()
                    vim.lsp.buf.format({ bufnr = ev.buf, id = client.id, timeout_ms = 1000 })
                end,
            })
        end
    end,
})
