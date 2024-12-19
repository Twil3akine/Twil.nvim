local v = vim
local opt = v.opt
local cmd = v.cmd

opt.termguicolors = false
opt.background = 'dark'

v.g.color_name = v.fn.expand('<sfile>:t:r')

cmd('hi clear')

cmd('hi Normal ctermfg=15 ctermbg=16')

cmd('hi Comment ctermfg=75')

cmd('hi Constant ctermfg=111')
cmd('hi String ctermfg=121')
cmd('hi Character ctermfg=121')

cmd('hi Identifier ctermfg=33')

cmd('hi Statement ctermfg=212')
cmd('hi Operator ctermfg=15')

cmd('hi PreProc ctermfg=195')

cmd('hi Type ctermfg=195')

cmd('hi Special ctermfg=182')

cmd('hi Underlined cterm=underline ctermfg=15')

cmd('hi Ignore ctermfg=0')

cmd('hi Error ctermfg=15 ctermbg=9')

cmd('hi Todo ctermfg=0 ctermbg=11')

cmd('hi LineNr ctermfg=69')

-- pop-up
cmd('hi Pmenu ctermfg=89 ctermbg=15')
cmd('hi PmenuSel ctermfg=109 ctermbg=15')

-- settings of Bracket etc...
cmd('syntax match MyParen /[()]/ containedin=ALL')
cmd('syntax match MyBrace /[{}]/ containedin=ALL')
cmd('syntax match MyBracket /[\\[\\]]/ containedin=ALL')

cmd('hi MyParen ctermfg=147')
cmd('hi MyBrace ctermfg=147')
cmd('hi MyBracket ctermfg=147')

-- settings of Git
cmd('hi DiffAdd ctermfg=15 ctermbg=22')
cmd('hi DiffChange ctermfg=15 ctermbg=4')
cmd('hi DiffDelete ctermfg=15 ctermbg=1')
cmd('hi DiffText ctermfg=15 ctermbg=5')
