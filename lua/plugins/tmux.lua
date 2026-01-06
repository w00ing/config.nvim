return {
  {
    "christoomey/vim-tmux-navigator",
    keys = {
      { "<C-h>", "<cmd>TmuxNavigateLeft<cr>", mode = "n", desc = "Tmux navigate left" },
      { "<C-j>", "<cmd>TmuxNavigateDown<cr>", mode = "n", desc = "Tmux navigate down" },
      { "<C-k>", "<cmd>TmuxNavigateUp<cr>", mode = "n", desc = "Tmux navigate up" },
      { "<C-l>", "<cmd>TmuxNavigateRight<cr>", mode = "n", desc = "Tmux navigate right" },
      { "<C-\\>", "<cmd>TmuxNavigatePrevious<cr>", mode = "n", desc = "Tmux navigate previous" },
    },
  },
}
