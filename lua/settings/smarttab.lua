local v = vim
local km = v.api.nvim_set_keymap

function smart_tab()
  local line = vim.api.nvim_get_current_line()
  local col = vim.fn.col('.')

  if vim.fn.pumvisible() ~= 0 then
    return vim.api.nvim_replace_termcodes('<C-n>', true, true, true)

  elseif col == 1 or line:sub(1, col-1):match('^%s*$') then
    return vim.api.nvim_replace_termcodes('<Tab>', true, true, true)

  else
    return vim.api.nvim_replace_termcodes('<C-x><C-n>', true, true, true)

  end
end

vim.api.nvim_set_keymap('i', '<Tab>', 'v:lua.smart_tab()', { expr = true, noremap = true, silent = true })
