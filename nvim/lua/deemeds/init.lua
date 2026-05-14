vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.number = true
vim.opt.relativenumber = true

-- keep transparency for editor
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }
)

-- Add proper floating border color
vim.api.nvim_set_hl(0, "FloatBorder", {
  fg = "#89b4fa",
  bg = "none",
})

require("deemeds.remap")
require("deemeds.lazy")
