-- settings of variances
local v = vim
local opt = vim.opt
local cmd = vim.cmd

--- setting lazy.nvim
local lazypath = v.fn.stdpath("data") .. "./lua/lazy/lazy.nvim"
if not (v.uv or v.loop).fs_stat(lazypath) then
  v.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

opt.rtp:prepend(lazypath)

--- install plugin with lazy.nvim
require("lazy").setup({
  {
    "folke/noice.nvim",
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
    event = "VeryLazy",
  },
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
  },
})

-- other settings
opt.termguicolors = true
opt.backup = false
opt.swapfile = false
opt.number = true
opt.relativenumber = true
opt.expandtab = true
opt.autoindent = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.clipboard:append('unnamedplus')

-- settings of syntax & colorscheme
cmd('syntax enable')
cmd('set background=dark')
require('colors.twil')

-- settings of NerdTree
vim.g.NERDTreeShowHidden = 1

-- settings of attachment files
require('settings.autocmds')
require('settings.keymaps')
require('settings.smarttab')
