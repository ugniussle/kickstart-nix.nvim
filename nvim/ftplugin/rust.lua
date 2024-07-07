-- Exit if the language server isn't available
if vim.fn.executable('rust-analyzer') ~= 1 then
  return
end

vim.lsp.start {
  name = 'rust-analyzer',
  cmd = { 'rust-analyzer' },
  capabilities = require('user.rust').make_client_capabilities(),
}
