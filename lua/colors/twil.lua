local v = vim
local opt = v.opt
local cmd = v.cmd

-- opt.termguicolors = true
opt.background = 'dark'
opt.cursorline = true

v.g.color_name = v.fn.expand('<sfile>:t:r')

cmd('hi clear')

local function hi(group, settings)
  local command = 'hi ' .. group
  if opt.termguicolors:get() then
    if settings.gui then
      command = command .. " guifg=" .. (settings.gui.fg or "NONE")
      command = command .. " guibg=" .. (settings.gui.bg or "NONE")
      if settings.gui.underline then
        command = command .. "gui=underline"
      end
    end
  else
      command = command .. " ctermfg=" .. (settings.cterm.fg or "NONE")
      command = command .. " ctermbg=" .. (settings.cterm.bg or "NONE")
      if settings.gui.underline then
        command = command .. "cterm=underline"
      end
  end
  cmd(command)
end

local colors = {
  Normal = {
    gui = { fg = "#e0e0e0", bg = "#222222" },
    cterm = { fg = 15, bg = 16 }
  },
  Comment = {
    gui = { fg = "#b9b988" },
    cterm = { fg = 75 }
  },
  Constant = {
    gui = { fg = "#ff8888" },
    cterm = { fg = 111 },
  },
  String = {
    gui = { fg = "#96ff96" },
    cterm = { fg = 121 }
  },
  Character = {
    gui = { fg = "#96ff96" },
    cterm = { fg = 121 }
  },
  Identifier = {
    gui = { fg = "#e0e0e0" },
    cterm = { fg = 33 }
  },
  Statemant = {
    gui = { fg = "#55eeee" },
    cterm = { fg = 212 }
  },
  Operator = {
    gui = { fg = "#e0e0e0" },
    cterm = { fg = 15 }
  },
  PreProc = {
    gui = { fg = "#eeee55" },
    cterm = { fg = 195 }
  },
  Type = {
    gui = { fg = "#55aaee" },
    cterm = { fg = 195 }
  },
  Special = {
    gui = { fg = "#ee9955" },
    cterm = { fg = 182 }
  },
  Underlined = {
    gui = { fg = "#e0e0e0", underline = true },
    cterm = { fg = 15, underline = true }
  },
  Ignore = {
    gui = { fg = "#e0e0e0" },
    cterm = { fg = 0 }
  },
  Error = {
    gui = { fg = "#e0e0e0", bg = "#ff6464" },
    cterm = { fg = 15, bg = 9 }
  },
  Todo = {
    gui = { fg = "#e0e0e0", bg = "#aaaa55" },
    cterm = { fg = 0, bg = 11 }
  },



  LineNr = {
    gui = { fg = "#585889" },
    cterm = { fg = 69 }
  },
  CursorLineNr = {
    gui = { fg = "#8c8cbd" },
    cterm = { fg = 69 }
  },
  CursorLine = {
    gui = { fg = "e0e0e0", bg = "#3a3a3a" },
  },
  Pmenu = {
    cterm = { fg = 89, bg = 15 },
    gui = { fg = "#e0e0e0", bg = "#494979" }
  },
  PmenuSel = {
    cterm = { fg = 109, bg = 15 },
    gui = { fg = "#e0e0e0", bg = "#8080b0" }
  },
}

for group, settings in pairs(colors) do
  hi(group, settings)
end

cmd('syntax match MyParen /[()]/ containedin=ALL')
cmd('syntax match MyBrace /[{}]/ containedin=ALL')
cmd('syntax match MyBracket /[\\[\\]]/ containedin=ALL')

hi('MyParen', {
  cterm = { fg = 147 },
  gui = { fg = "#0000ff" }
})

hi('MyBrace', {
  cterm = { fg = 147 },
  gui = { fg = "#0000ff" }
})

hi('MyBracket', {
  cterm = { fg = 147 },
  gui = { fg = "#0000ff" }
})
