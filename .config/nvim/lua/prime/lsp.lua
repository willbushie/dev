-- local variables
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')

-- python LSP pyright
-- :echo executable('pyright')
lspconfig.pyright.setup({
    capabilities = capabilities,
})

-- lua LSP lua_ls
-- :echo executable('lua-language-server')
lspconfig.lua_ls.setup({
    capabilities = capabilities,
})

-- bash LSP bashls
-- :echo executable('bash-langauge-server')
lspconfig.bashls.setup({
    capabilities = capabilities,
})



-- enable and setup autocompletion
local cmp = require'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      -- You can integrate with luasnip, vsnip, etc.
    end,
  },
  mapping = cmp.mapping.preset.insert({}),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
  })
}
