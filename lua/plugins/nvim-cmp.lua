return
{
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp"
  },
  config = function()
    local cmp = require("cmp")
    cmp.setup({
      sources = cmp.config.sources({
        { name = "buffer" },
        { name = "nvim_lsp" },
        { name = "path" },
      }),
      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      }),
    })

    -- `/` cmdline setup.
    cmp.setup.cmdline('/', {
      mapping = cmp.mapping.preset.cmdline({
        ['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ['<Down>'] = {
            c = function(_)
              if cmp.visible() then
                cmp.select_next_item()
              else
                cmp.select_next_item()
              end
            end,
          },
          ['<Up>'] = {
            c = function(_)
              if cmp.visible() then
                cmp.select_prev_item()
              else
                cmp.select_prev_item()
              end
            end,
          }
      }),
      sources = {
        { name = 'buffer' }
      }
    })

    -- `:` cmdline setup.
    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline({
        ['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        -- ... rest of your mappings
        ['<Down>'] = {
          c = function(_)
            if cmp.visible() then
              cmp.select_next_item()
            else
              cmp.select_next_item()
            end
          end,
        },
        ['<Up>'] = {
          c = function(_)
            if cmp.visible() then
              cmp.select_prev_item()
            else
              cmp.select_prev_item()
            end
          end,
        }
      }),
      sources = cmp.config.sources({
        { name = 'path' }
      }, {
        {
          name = 'cmdline',
          option = {
            ignore_cmds = { 'Man', '!' }
          }
        }
      })
    })
  end
}