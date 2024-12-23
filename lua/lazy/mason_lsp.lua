require("mason-lspconfig").setup({
  ensure_installed = { "pyright", "lua_ls", "clangd", "rust_analyzer" },
  automatic_installaction = true,
})

require("mason-lspconfig").setup_handlers({
  function(server_name)
    require("lspconfig")[server_name].setup({
      capabilities = require("cmp_nvim_lsp").default_capabilities(),
    })
  end,
})
