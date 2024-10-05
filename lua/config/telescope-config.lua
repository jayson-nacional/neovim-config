-- mapping is based on lazyvim.org/keymaps
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>/', '<cmd>Telescope live_grep search_dirs=.<cr>', { desc = 'Grep (Root Dir)' })
vim.keymap.set('n', '<leader>:', builtin.command_history, { desc = 'List commands that were executed recently' })
vim.keymap.set('n', '<leader>bf', builtin.buffers, { desc = 'Lists open buffers in current neovim instance' })
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = 'Fuzzy search through the output of git ls-files' })
vim.keymap.set('n', '<leader>fr', builtin.search_history, { desc = 'Lists searches that were executed recently' })
vim.keymap.set('n', '<leader>gc', builtin.git_commits, { desc = 'Lists git commits with diff preview' })
vim.keymap.set('n', '<leader>gs', builtin.git_status, { desc = 'Lists current changes per file with diff preview and add action' })
vim.keymap.set('n', '<leader>s"', builtin.registers, { desc = 'Lists vim registers, pastes the contents of the register on <cr>' })
