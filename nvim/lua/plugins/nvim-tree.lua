return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        require("nvim-tree").setup({
        })

      vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", {
        silent = true,
        noremap = true,
      })

      vim.api.nvim_create_autocmd("VimEnter", {
        callback = function()
          local path = vim.fn.expand("%:p")
          if vim.fn.isdirectory(path) == 1 then
            vim.cmd("NvimTreeOpen")
          end
        end,
      })

    end,
}

