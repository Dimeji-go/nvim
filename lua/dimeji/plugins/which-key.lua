return {
  {"Dimeji-go/which-key.nvim",
  branch = 'main',
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
}}
