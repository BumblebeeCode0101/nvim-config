vim.keymap.set('n', '<leader>t', ':terminal<CR>', { noremap = true, silent = true, desc='Open a terminal' })

vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {desc = 'Find Files With Telescope'})
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", {desc = 'Find File Contents with Telescope'})
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", {desc = 'Search Previously Opened Files With Telescope'})
vim.keymap.set("n", "<leader>fu", "<cmd>Telescope undo<cr>", {desc = 'View Undo History With Telescope'})
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", {desc = 'Buffer Switcher'})
