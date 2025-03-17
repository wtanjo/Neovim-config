return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    require("neo-tree").setup()
    -- 用Space + D显示文档树
    vim.keymap.set("n", "<leader>d", ":Neotree<CR>")
    vim.keymap.set("n", "<leader>c", ":Neotree close<CR>")
  end,
}

