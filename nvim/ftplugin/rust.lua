-- Exit if the language server isn't available
if vim.fn.executable('rust-analyzer') ~= 1 then
  require("notify")("rust analyzer not found")
  return
end

local rt = require("rust-tools")

rt.setup({})
