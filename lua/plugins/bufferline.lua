return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup()
    vim.keymap.set("n", "<C-c>", ":bdelete<CR>")
    vim.keymap.set("n", "<A-j>", ":BufferLineCyclePrev<CR>")
    vim.keymap.set("n", "<A-k>", ":BufferLineCycleNext<CR>")
  end,
}
