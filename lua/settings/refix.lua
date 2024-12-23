local cmp = require("cmp")
local lspkind = require("lspkind")

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<S-Space>"] = cmp.mapping.complete(),
    ["<Enter>"] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
  }),
  formatting = {
    format = lspkind.cmp_format({
      mode = "symbol_text",
      maxwidth = 10,
      ellipsis_char = "...",
    }),
  },
  -- completion = {
  --   autocomplete = { require("cmp.types").cmp.TriggerEvent.Manual },
  --   completeopt = "menu,menuone,noselect",
  -- },
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = "vsnip" },
  }),
})
