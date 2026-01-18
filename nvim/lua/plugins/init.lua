return {
		 {
        "sainnhe/everforest", -- 插件仓库地址
        priority = 1000, -- 确保高优先级加载
        config = function()
            -- 2. 在插件加载完成后，进行其自身的配置
            vim.g.everforest_background = 'hard'
            vim.g.everforest_enable_italic = 1
            -- 3. 最后设置颜色方案和背景
            vim.cmd.colorscheme('everforest')
            vim.o.background = 'dark'
        end,
    },
	{
		"rebelot/kanagawa.nvim"
	},
	{
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	config = function()
		require('nvim-tree').setup()
	end,
	},
{
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
		require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    always_show_tabline = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
      refresh_time = 16, -- ~60fps
      events = {
        'WinEnter',
        'BufEnter',
        'BufWritePost',
        'SessionLoadPost',
        'FileChangedShellPost',
        'VimResized',
        'Filetype',
        'CursorMoved',
        'CursorMovedI',
        'ModeChanged',
      },
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {
		function ()
			return os.date("%H:%M")
		end
	}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
	  })
    end,
  },
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("bufferline").setup()
    end,
  },
  {
	"neoclide/coc.nvim",
    branch = "release",
  },
  {
	"nvim-treesitter/nvim-treesitter"
  },
  {
	  {
        "rcarriga/nvim-notify",
        config = function()
            require("notify").setup({
                background_colour = "#000000", 
                timeout = 3000,
                max_height = function() return math.floor(vim.o.lines * 0.75) end, -- 最大高度
                max_width = function() return math.floor(vim.o.columns * 0.75) end, -- 最大宽度
                -- 渲染样式：可选 "default", "minimal", "simple" 或自定义函数
                render = "default",
                -- 动画阶段：可选 "fade_in_slide_out", "slide", "fade", "static"
                stages = "fade_in_slide_out",
                -- 其他功能：是否启用全局替换（下方会说明）
            })
            vim.notify = require("notify")
        end,
    },
  }
}
