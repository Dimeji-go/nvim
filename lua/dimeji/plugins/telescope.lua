return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
   -- { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        layout_strategy = "vertical",
        layout_config = {
            vertical = {
                width = 0.9, 
                height = 0.9,
                preview_height = 0.6,
               preview_cutoff = 0
            }
        },
            path_display = {truncate =2},
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
          n = {
              -- I'm used to closing buffers with "d" from bufexplorer
              ["d"] = require("telescope.actions").delete_buffer,
              -- I'm also used to quitting bufexplorer with q instead of escape
              ["q"] = require("telescope.actions").close,
              ["<C-k>"] = actions.move_selection_previous, -- move to prev result
              ["<C-j>"] = actions.move_selection_next, -- move to next result

            },
        },
      },
    })

    -- telescope.load_extension("fzf")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader><space>", "<cmd>e #<cr>", { desc = "Alternate buffer" })
    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<M-r>", "<cmd>Telescope oldfiles<cr>", { desc = "Recentky opened files" })
    keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep<cr>", { desc = "Find wlrd in cwd" })
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
  end,
}

