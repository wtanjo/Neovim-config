return
{
    "folke/neodev.nvim",
    opts = {},

    config = function()
        -- IMPORTANT: make sure to setup neodev BEFORE lspconfig
        require("neodev").setup({
        -- add any options here, or leave empty to use the default settings
        })

        -- then setup your lsp server as usual

        -- example to setup lua_ls and enable call snippets
        require("lspconfig").lua_ls.setup({
            settings = {
                Lua = {
                    completion = {
                        callSnippet = "Replace"
                    }
                }
            }
        })
    end
}

