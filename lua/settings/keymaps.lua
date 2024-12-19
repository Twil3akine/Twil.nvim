local km = vim.api.nvim_set_keymap

-- keymaps
km('i', 'jj', '<Esc>', { noremap = true, silent = true })
km('i', 'sd', '<Esc>', { noremap = true, silent = true })
km('i', '<C-z>', '<Esc>ui', { noremap = true, silent = true })
km('i', '<C-p>', '<Esc>pi', { noremap = true, silent = true })

km('n', 'ss', ':split<Enter>', { noremap = true, silent = true })
km('n', 'sv', ':vsplit<Enter>', { noremap = true, silent = true })
km('n', 'sh', '<C-w>h', { noremap = true, silent = true })
km('n', 'sj', '<C-w>j', { noremap = true, silent = true })
km('n', 'sk', '<C-w>k', { noremap = true, silent = true })
km('n', 'sl', '<C-w>l', { noremap = true, silent = true })
km('n', '>>', ':vertical resize -5<Enter>', { noremap = true, silent = true })
km('n', '<<', ':vertical resize +5<Enter>', { noremap = true, silent = true })

-- bracket complements
km('i', "'", "''<LEFT>", { noremap = true, silent = true })
km('i', '"', '""<LEFT>', { noremap = true, silent = true })
km('i', "(", "()<LEFT>", { noremap = true, silent = true })
km('i', "{", "{}<LEFT>", { noremap = true, silent = true })
km('i', "[", "[]<LEFT>", { noremap = true, silent = true })
km('i', "<>", "<><LEFT>", { noremap = true, silent = true })

km('i', "(<Enter>", "()<Left><Enter><Enter><Up><Tab>", { noremap = true, silent = true })
km('i', "{<Enter>", "{}<Left><Enter><Enter><Up><Tab>", { noremap = true, silent = true })
km('i', "[<Enter>", "[]<Left><Enter><Enter><Up><Tab>", { noremap = true, silent = true })

-- NERDTree
km('n', 'ff', ':NERDTreeToggle<Enter>', { noremap = true, silent = true })

--barbar
km('n', '<C-h>', '<Cmd>BufferPrevious<Enter>', { noremap = true, silent = true })
km('n', '<C-k>', '<Cmd>BufferNext<Enter>', { noremap = true, silent = true })
km('n', '<C-e>', '<Cmd>BufferClose<Enter>', { noremap = true, silent = true })

--termguicolors toggle
function toggle_termguicolors()
    if vim.opt.termguicolors then
        vim.cmd('se termguicolors!')
    end
end

vim.api.nvim_set_keymap('n', '<C-t>g', '<Cmd>lua toggle_termguicolors()<CR>', { noremap = true, silent = true })
