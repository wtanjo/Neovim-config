return
{
  "nvim-treesitter/nvim-treesitter",
  dependencies = { "HiPhish/rainbow-delimiters.nvim" },
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })()
  end,
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "python", "lua", "html", "css", "javascript", "json", "c", "cpp", "java", "r" },
      highlight = { enable = true },
      indent = { enable = true },
      rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil
      }
    })
  end
}
