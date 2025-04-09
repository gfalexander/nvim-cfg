return {
  "rmagatti/auto-session",
  config = function()
    require("auto-session").setup({
      auto_restore_enabled = false,
      auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/tmp" },
    })

    local keymap = vim.keymap.set

    keymap("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "restore session" })
    keymap("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "save session" })
  end,
}
