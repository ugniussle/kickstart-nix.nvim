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
      gray = "#8a8d94"
    },
  }
})
vim.cmd("colorscheme onedark")
