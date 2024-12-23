require('telescope').setup({
  defaults = {
    prompt_prefix = "🔍  ",
    sorting_strategy = "descending",
    layout_config = {
      horizontal = { width = 0.85 },
    },
    winblend = 10,
    border = true,
    path_display = { "truncate" },
    dynamic_preview_title = true,
  },
})
