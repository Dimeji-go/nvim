return {
  {"Dimeji-go/which-key.nvim",
  branch = 'main',
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  local wk = require("which-key")
  wk.register(mappings, opts)
  
  wk.register({
    ["<leader>st"] = {
      desc = "Start Liveserver",
      cmd = ":LiveServerStart<CR>",
    },
  })
  wk.register({
    ["<leader>sp"] = {
      desc = "Stop Liveserver",
      cmd = ":LiveServerStop<CR>",
    },
  })


  end,
}}
