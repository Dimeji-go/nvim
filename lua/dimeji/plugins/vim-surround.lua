return {
  'tpope/vim-surround',
  config = function()
    -- add a custom emphasis for markdown filetype
    vim.api.nvim_create_autocmd({ "FileType" }, {
      group = vim.api.nvim_create_augroup("MY.AUG.surround", {}),
      pattern = { "markdown" },
      desc = "add a custom emphasis surround command for markdown filetype",
      command = 'let b:surround_{char2nr("e")} = "**\r**"',
    })
  end,
}
--After setup, type
--ysiWe: make a WORD bold
--ysse: make a line bold
--ys5we: make 5 words bold
