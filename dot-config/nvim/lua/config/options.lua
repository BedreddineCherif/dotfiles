local set = vim.opt

-- important
set.cdhome = true
set.autochdir = false
set.incsearch = true
set.inccommand = "split"
set.ignorecase = true
set.smartcase = true

-- displaying text
set.scrolloff = 8
set.number = true
set.relativenumber = true

-- syntax, hightlighting and spelling
set.termguicolors = true
set.cursorline = true
set.colorcolumn = "+1"

-- multiple windows
set.splitbelow = true
set.splitright = true

-- messages and info
-- set.shortmess

-- selecting text
set.clipboard = "unnamedplus"

-- editing text
set.undolevels = 10000
set.undofile = true
set.textwidth = 80

-- tabs and indenting
set.tabstop = 4
set.shiftwidth = 4
set.smarttab = true
set.softtabstop = 4
set.expandtab = true
set.autoindent = true
set.smartindent = true

-- reading and writing files
set.backup = false

-- the swap file
set.swapfile = false

-- various
set.signcolumn = "yes"
