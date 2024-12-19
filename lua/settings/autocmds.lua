-- require('settings.nixl.nixl.lua')

local v = vim

function Setup()
    t = v.fn.expand('%:e')
    if t == 'c' then -- case in C
        v.api.nvim_set_keymap('i', 'cc', '<Esc>:w<Enter>:! cc %<Enter>', { noremap = true, silent = true })
        v.api.nvim_set_keymap('i', '<C-q>', '#include <stdio.h><Enter>int main(void) {}<Left><Enter>', { noremap = true, silent = true })

    elseif t == 'cpp' then -- case in C++
        v.api.nvim_set_keymap('i', 'cc', '<Esc>:w<Enter>:! g++ %<Enter>', { noremap = true, silent = true })
        v.api.nvim_set_keymap('i', '<C-q>', '#include <bits/stdc++.h><Enter>using namespace std;<Enter><Enter>int main() {}<Left><Enter><Enter><Enter><Tab>return 0;<Enter><Up><Up><Up><Tab>', { noremap = true, silent = true })

    elseif t == 'py' then -- case in python3
        v.api.nvim_set_keymap('i', 'cc', '<Esc>:w<Enter>:! python3 %<Enter>', { noremap = true, silent = true })

    end
end

vim.cmd('autocmd BufNewFile, BufRead * lua Setup()')
