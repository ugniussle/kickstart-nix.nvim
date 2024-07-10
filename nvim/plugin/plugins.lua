if vim.g.did_load_plugins_plugin then
  return
end
vim.g.did_load_plugins_plugin = true

-- many plugins annoyingly require a call to a 'setup' function to be loaded,
-- even with default configs

require('nvim-surround').setup()
require('which-key').setup()
require('fidget').setup()
local notify = require('notify')
notify.setup({
  background_colour = "#FFFFFF"
})
vim.notify = notify.notify

require('ibl').setup { }

require("autoclose").setup()
require("onedarkpro").setup({
  options = {
    transparency = true,
  },
  colors = {
    onedark_vivid = {
      line_number = "#1c55d6",
      red = "#cfcfcf"
    },
  },
})
vim.cmd("colorscheme onedark")
