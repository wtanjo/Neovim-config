return
{
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      clangd = {},
      lua_ls = {},
      csharp_ls = {},
      texlab = {},
      pyright = {}
    },
  },
  
  config = function(_, opts)
    for server, config in pairs(opts.servers) do
      require("lspconfig")[server].setup(config)
    end

    vim.keymap.set("n", "<leader>w", vim.diagnostic.open_float)
    vim.keymap.set("n", "d[", vim.diagnostic.goto_prev)
    vim.keymap.set("n", "d]", vim.diagnostic.goto_next)
    vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)

    -- Use LspAttach autocommand to only map the following keys after the language server attaches to the current buffer
    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('UserLspConfig', {}),
      callback = function(ev)
        -- Enabe=le completion triggered by <C-x><C-o>
        vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

        -- Buffer local mappings
        -- See ':help vim.lsp.*' for documentation on any of the below functions
        local mopts = { buffer = ev.buf }
        vim.keymap.set("n", "tD", vim.lsp.buf.declaration, mopts)
        vim.keymap.set("n", "td", vim.lsp.buf.definition, mopts)
        vim.keymap.set("n", "H", vim.lsp.buf.hover, mopts)
        vim.keymap.set("n", "ti", vim.lsp.buf.implementation, mopts)
        vim.keymap.set("n", "<C-s>", vim.lsp.buf.signature_help, mopts)
        vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, mopts)
        vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, mopts)
        vim.keymap.set("n", "<leader>wl", function()
          print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, mopts)
        vim.keymap.set("n", "ttd", vim.lsp.buf.type_definition, mopts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, mopts)
        vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, mopts)
        vim.keymap.set("n", "tr", require("telescope.builtin").lsp_references, mopts)
        vim.keymap.set("n", "<leader>fm", function()
          vim.lsp.buf.format { async = true }
        end, mopts)
      end
    })
  end
}
