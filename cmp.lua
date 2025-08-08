-- Configuracion del Pop Up de Autocompletado

---@diagnostic disable: missing-fields
local cmp = require('cmp')
local luasnip = require('luasnip')
--local cmp_autopairs = require "nvim-autopairs.completion.cmp"

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<C-n>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.choice_active() then
        luasnip.change_choice(1)
      else
        fallback()
      end
    end, {"i", "s"}),
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm{ 
      behavior = cmp.ConfirmBehavior.Insert,
      select = true }
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "path" },
    { name = "luasnip" },
    { name = "buffer" },
  },
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  }),
  matching = { disallow_symbol_nonprefix_matching = false }
})
