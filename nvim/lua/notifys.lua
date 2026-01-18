-- ~/.config/nvim/lua/notifys.lua (修复版本)
local notify = require("notify")

-- 创建自动命令组
local augroup = vim.api.nvim_create_augroup("FileEvents", { clear = true })

-- 1. 保存文件通知（已修复）
vim.api.nvim_create_autocmd("BufWritePost", {
    group = augroup,
    desc = "文件保存提示",
    callback = function(args)
        local filename = vim.fn.fnamemodify(args.file, ":t")
        local path = vim.fn.fnamemodify(args.file, ":~:.")
        notify(string.format("✓ 已保存: %s\n路径: %s", filename, path), "info", {
            title = "文件保存成功",
            timeout = 1500,
            hide_from_history = true,
        })
    end
})

-- 2. 打开文件通知
vim.api.nvim_create_autocmd("BufRead", {
    group = augroup,
    desc = "文件打开提示",
    once = true,
    callback = function(args)
        local filename = vim.fn.fnamemodify(args.file, ":t")
        local filetype = vim.bo.filetype
        local icon = "📄"
        
        -- 根据文件类型设置不同图标
        local icons = {
            python = "🐍",
            javascript = "📜",
            typescript = "📘",
            lua = "🌙",
            markdown = "📝",
            rust = "🦀",
            go = "🐹",
            java = "☕",
        }
        icon = icons[filetype] or icon
        notify(string.format("%s 已加载: %s", icon, filename), "info", {
            title = "文件已打开",
            timeout = 2000,
            icon = icon,
        })
    end
})

