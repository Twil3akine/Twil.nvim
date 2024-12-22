require("lazy").setup({
  { "MunifTanjim/nui.nvim" },
  { "rcarriga/nvim-notify" },
  { 'lewis6991/gitsigns.nvim' },
  { "nvim-lua/plenary.nvim", },

  -- dependies
  {
    "rcarriga/nvim-notify",
    config = function()
      require("notify").setup({
        background_color = "#000000",
      })
    end
  },

  {
    "nvim-tree/nvim-web-devicons",
    lazy = false,
    config = function()
      require("nvim-web-devicons").setup({
        override = {},
        default = true,
      })
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require('nvim-treesitter.configs').setup({
        ensure_installed = { "lua", "python", "java", "rust", "c", "cpp", },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  },


  -- noice.nvim   https://github.com/folke/noice.nvim
  {
    "folke/noice.nvim",
    event = "VeryLazy",
  },


  -- nerdtree.nvim   https://github.com/preservim/nerdtree
  {
    "preservim/nerdtree",
    event = "VeryLazy",
  },


  -- barbar.nvim   https://github.com/romgrk/barbar.nvim
  {
    "romgrk/barbar.nvim",
    event = "VeryLazy",
  },


  -- lualine.nvim   https://github.com/nvim-lualine/lualine.nvim
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
  },


  -- telescope.nvim   https://github.com/nvim-telescope/telescope.nvim
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    event = "VeryLazy",
  },


  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.pyright.setup({})
      lspconfig.clangd.setup({})
      lspconfig.rust_analyzer.setup({})
      lspconfig.jdtls.setup({})
    end
  },


  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup({
        ui = {
          border = "rounded",
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })
    end
  },


  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "pyright", "lua_ls" },
        automatic_installaction = true,
      })

      require("mason-lspconfig").setup_handlers({
        function(server_name)
          require("lspconfig")[server_name].setup({})
        end
      })
    end
  }
})
