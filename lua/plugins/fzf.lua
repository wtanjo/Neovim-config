return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},
  config = function()
    require("fzf-lua").setup()
    vim.keymap.set("n", "<leader>fn", ":FzfLua files<CR>")
    vim.keymap.set("n", "<leader>fc", ":FzfLua grep<CR>")
    vim.keymap.set("n", "<leader>r", ":FzfLua resume")
    vim.keymap.set("n", "<leader>h", ":FzfLua oldfiles")
  end,
}
