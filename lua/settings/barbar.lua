package.path = package.path .. ';~/.local/share/nvim/plugged/barbar.nvim/lua/?.lua'

-- nvim-web-deviconsの設定
require('nvim-web-devicons').setup {
    default = true,
}

-- barbarの設定
require('barbar').setup({
    icons = {
        filetype = {
            enabled = true,
        },
        buffer_index = true,
        buffer_number = false,
        button = '', -- タブの閉じるボタンのアイコンを非表示
        separator = { left = '▎', right = '' }, -- セパレーターを表示
        modified = { button = '●' },
        pinned = { button = '' }, -- ピン留めアイコンを非表示
        diagnostics = {
            [vim.diagnostic.severity.ERROR] = { enabled = false },
            [vim.diagnostic.severity.WARN] = { enabled = false },
            [vim.diagnostic.severity.INFO] = { enabled = false },
            [vim.diagnostic.severity.HINT] = { enabled = true },
        },
    },
    animation = true,
    show_index = true,
    highlight = {
        -- 現在アクティブなタブのスタイルを設定
        current = {
            fg = '#ffffff',  -- 前景色（文字色）
            bg = '#005f87',  -- 背景色
        },
        -- 非アクティブなタブのスタイルを設定
        inactive = {
            fg = '#a0a0a0',
            bg = '#303030',
        },
    },
})

