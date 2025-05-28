-- SYNTAX & EDITING -----------------------------------------------------------

-- vim.o.guicursor = "a:block"   -- keep cursor as block
vim.opt.termguicolors = true  -- set good colors

vim.opt.nu = true             -- line numbers
vim.opt.relativenumber = true -- relative line numbers
vim.opt.tabstop = 4           -- tab width is 4 spaces
vim.opt.softtabstop = 4       -- num of spaces a tab feels like in insert mode
vim.opt.shiftwidth = 4        -- num of spaces to use for each step of auto indent
vim.opt.expandtab = true      -- use spaces instead of tabs
vim.opt.smartindent = true    -- auto insert indents in code like files

vim.opt.wrap = false          -- disable line wrapping
vim.opt.colorcolumn = "80"    -- highlight column 80
vim.opt.cursorline = true     -- highlight cursor line

vim.opt.hlsearch = false      -- disable longterm highlighting when searching
vim.opt.incsearch = true      -- enable incremental search 
vim.opt.ignorecase = true     -- ignore capital letters during search
vim.opt.smartcase = true      -- override ingorecase if searching for capital letters
vim.opt.showmatch = true      -- show matching words during a search

vim.opt.scrolloff = 8         -- ensure 8 lines present at bottom of screen
vim.opt.updatetime = 50       -- fast update time (milliseconds)
vim.g.mapleader = " "         -- set leader key



-- STATUSLINE -----------------------------------------------------------------

-- Always show the statusline
vim.o.laststatus = 2

-- Set the statusline
vim.o.statusline = table.concat({
    "%F%m%r%h%w",      -- Full file path, modified, readonly, help, preview flags
    "%=",              -- Separate left and right side of statusline
    "[%Y]",            -- Filetype
    "[%{&ff}]",        -- File format (unix, dos, etc)
    "[%04l,%04v]",     -- Current line, column (zero-padded)
    "[%p%%]",          -- Percent through file
    "[%L]"             -- Total number of lines
})



