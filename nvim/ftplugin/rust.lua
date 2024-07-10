-- Exit if the language server isn't available
if vim.fn.executable('rust-analyzer') ~= 1 then
  require("notify")("rust analyzer not found")
  return
end

local bufnr = vim.api.nvim_get_current_buf()
vim.keymap.set(
  "n",
  "<leader>ca",
  function ()
    vim.cmd.RustLsp('codeAction')
  end,
  { silent = true, buffer = bufnr }
)
