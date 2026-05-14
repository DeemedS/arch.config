-- Set <Space> as leader key BEFORE any mappings
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Unmap <Space> in normal mode to prevent triggering Visual mode
vim.keymap.set("n", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set("v", "<Space>", "<Nop>", { noremap = true, silent = true })

-- Your custom mapping
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { noremap = true, silent = true })

