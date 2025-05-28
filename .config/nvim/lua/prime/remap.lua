-- set leader key
vim.g.mapleader = " "
-- easier netrw access 
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- escape with jj
vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })

-- easily move highlighted lines & auto indent
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

-- keep cursor in the same location when appending lines
vim.keymap.set("n", "J", "mzJ`z")
-- keep cursor in middle of screen when half page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- keep cursor in middle of screen when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- <leader>y copies to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- begin replacing all matching strings cursor is on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) 
-- create executable file without leaving nvim
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
