require('lspconfig').terraformls.setup{}
vim.api.nvim_create_autocmd({"BufWritePre"}, {
  pattern = {"*.tf", "*.tfvars"},
  callback = vim.lsp.buf.formatting_sync,
})

require('lspconfig').jsonls.setup{}

require('lspconfig').yamlls.setup{}

require'lspconfig'.eslint.setup{}

require'lspconfig'.marksman.setup{}

-- requires java 17
-- require'lspconfig'.jdtls.setup{}
