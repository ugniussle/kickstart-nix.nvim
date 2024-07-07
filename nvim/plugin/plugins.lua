if vim.g.did_load_plugins_plugin then
  return
end
vim.g.did_load_plugins_plugin = true

-- many plugins annoyingly require a call to a 'setup' function to be loaded,
-- even with default configs

require('nvim-surround').setup()
require('which-key').setup()
require('fidget').setup()
require('notify').setup({
  background_colour = "#FFFFFF"
})

require('ibl').setup { }

require("autoclose").setup()
require("onedarkpro").setup({
  options = {
    transparency = true,
    colors = {
      onedark = {
        line_number = "#1c55d6",
        inlay_hint = "#1c55d6",
        bg = "#1c55d6",
        fg = "#1c55d6",
      },
    },
  }
})
vim.cmd("colorscheme onedark")
