-- Leader
vim.g.mapleader = " "

local set = vim.opt

-- General 
set.title = true
set.titlestring = "nvim"
set.number = true
set.relativenumber = true
set.mouse = "a"
set.spelllang = "en_gb"
set.termguicolors = true

-- Tab and whitespace
set.autoindent = true
set.expandtab = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2

-- Search
set.ignorecase = true
set.smartcase = true
set.gdefault = true -- assumes `g` flag for replacing text in lines with :s

-- Scrolling and other UI settings
set.cursorline = true
set.cursorcolumn = true
set.signcolumn = "yes"
set.wrap = false

