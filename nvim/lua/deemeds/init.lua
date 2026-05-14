vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.number = true
vim.opt.relativenumber = true

-- keep transparency for editor
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })

-- Lazy UI background
vim.api.nvim_set_hl(0, "LazyNormal", { bg = "#1e1e2e" })
vim.api.nvim_set_hl(0, "LazyBackdrop", { bg = "none" })

require("deemeds.remap")
require("deemeds.lazy")
