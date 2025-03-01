return
{
  "williamboman/mason.nvim",
  dependencies = { "williamboman/mason-lspconfig.nvim" },
  config = function()
    require("mason").setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    })

    require("mason-lspconfig").setup({
      automatic_installation = true,
      ensure_installed = { "clangd", "csharp_ls", "texlab", "lua_ls", "pyright" }
    })
  end
}
