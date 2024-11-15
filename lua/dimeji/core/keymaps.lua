-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<C-w>m", "<cmd>MaximizerToggle<CR>", { desc = "Maximize/minimize a spli" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<M-q>", ":q!<CR>", { desc = "Force quit" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
keymap.set("n", "<leader>w", ":w!<CR>", { desc = "Save file" }) -- close current split window
keymap.set("n", "<leader>sv", ":MarkdownPreview<CR>", { desc = "Start Markdown Preview " }) -- close current split window
keymap.set("n", "<leader>sx", ":MarkdownPreviewStop<CR>", { desc = "Stop Markdown Preview " }) -- close current split window
keymap.set("n", "<leader>q", ":wq!<CR>", { desc = "Save and quit" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set('n', '<leader>b', "<cmd>Telescope buffers sort_mru=true sort_lastused=true initial_mode=normal<cr>", { noremap = true, silent = true })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
vim.api.nvim_set_keymap('n', '<leader>hs', ':lua require"gitsigns".stage_hunk()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>hr', ':lua require"gitsigns".reset_hunk()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>hs', [[:<C-U>lua require"gitsigns".stage_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>hr', [[:<C-U>lua require"gitsigns".reset_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>hS', ':lua require"gitsigns".stage_buffer()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>hu', ':lua require"gitsigns".undo_stage_hunk()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>hR', ':lua require"gitsigns".reset_buffer()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>hp', ':lua require"gitsigns".preview_hunk()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>hb', ':lua require"gitsigns".blame_line({full=true})<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tb', ':lua require"gitsigns".toggle_current_line_blame()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>hd', ':lua require"gitsigns".diffthis()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>hD', ':lua require"gitsigns".diffthis("~")<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>td', ':lua require"gitsigns".toggle_deleted()<CR>', { noremap = true, silent = true })

    
