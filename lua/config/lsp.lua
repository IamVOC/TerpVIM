local lsp = require('lsp-zero').preset({
  name = 'recommended',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
  float_border = 'rounded',
  configure_diagnostics = true,
})

lsp.set_sign_icons({
  error = '󱐩',
  warn  = '󰌤',
  hint  = '󱟄',
  info  = ''
})

lsp.nvim_workspace()

lsp.setup()

local cmp = require('cmp')

cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  },
})
