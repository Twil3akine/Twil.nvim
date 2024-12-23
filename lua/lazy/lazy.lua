require("lazy").setup({
  { "MunifTanjim/nui.nvim" },
  { "rcarriga/nvim-notify" },
  { 'lewis6991/gitsigns.nvim' },
  { "nvim-lua/plenary.nvim", },
  { "SmiteshP/nvim-navic" },

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


  -- mason.nvim   https://github.com/williamboman/mason.nvim
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    dependencies = {
      "neovim/nvim-lspconfig",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "onsails/lspkind.nvim",
      "hrsh7th/cmp-vsnip",
      "hrsh7th/vim-vsnip",
    },
  },


  -- incline.nvim   https://github.com/b0o/incline.nvim
  {
    "b0o/incline.nvim",
    event = "VeryLazy",
  },
})
