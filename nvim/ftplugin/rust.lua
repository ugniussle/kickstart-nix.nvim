-- Exit if the language server isn't available
if vim.fn.executable('rust-analyzer') ~= 1 then
  require("notify")("rust analyzer not found")
  return
end

-- vim.lsp.start {
--   name = "rust_analyzer",
--   cmd = {"rust-analyzer"},
--   capabilities = require('user.lsp').make_client_capabilities(),
-- }
require("notify")("rust analyzer setup")
