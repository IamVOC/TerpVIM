local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
  float_border = 'rounded',
  configure_diagnostics = true,
})

lsp.set_sign_icons({
  error = 'ᚸ',
  warn = 'ᛄ',
  hint = 'ᛃ',
  info = 'ᛜ'
})

lsp.setup()
