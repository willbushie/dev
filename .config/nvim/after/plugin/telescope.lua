local builtin = require('telescope.builtin')
-- search all files
vim.keymap.set('n', '<leader>pf', function()
    require('telescope.builtin').find_files({ 
        hidden = true,
        file_ignore_patterns = { '.git/' } })
end, { desc = 'Telescope find files (including hidden)' })
-- search files only in git
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope git files' })
-- enable easy grep searching (requires ripgrep to function)
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})

