require("lazy").setup({
  {
    "folke/noice.nvim",
    -- https://github.com/folke/noice.nvim
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    opts = {
  
    },
  },
  {
    "preservim/nerdtree",
    -- https://github.com/preservim/nerdtree
    event = "VeryLazy",
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
    "romgrk/barbar.nvim",
    -- https://github.com/romgrk/barbar.nvim
    dependencies = {
      'lewis6991/gitsigns.nvim',
      { 'nvim-tree/nvim-web-devicons', lazy = false },
    },
    event = "VeryLazy",
  },
  {
    "nvim-lualine/lualine.nvim",
    -- https://github.com/nvim-lualine/lualine.nvim
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  {
    "rcarriga/nvim-notify",
    config = function()
      require("notify").setup({
        background_color = "#000000",
      })
    end
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require('nvim-treesitter.configs').setup({
        ensure_installed = { "lua", "python", "java", "rust" },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
})
